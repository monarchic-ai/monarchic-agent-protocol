#!/usr/bin/env python3
from __future__ import annotations

import argparse
from dataclasses import dataclass
from datetime import datetime, timezone
import json
from pathlib import Path
import re
import subprocess
import sys

ALLOWED_TYPES = (
    "feat",
    "fix",
    "docs",
    "style",
    "refactor",
    "perf",
    "test",
    "build",
    "ci",
    "chore",
    "revert",
    "mcp",
    "skill",
    "skills",
)

MCP_SKILLS_TYPES = frozenset({"mcp", "skill", "skills"})
MCP_SKILLS_SCOPES = frozenset({"mcp", "skill", "skills"})

CONVENTIONAL_SUBJECT_RE = re.compile(
    r"^(?P<type>" + "|".join(ALLOWED_TYPES) + r")"
    r"(?P<scope>\([a-zA-Z0-9._/\-]+\))?"
    r"(?P<breaking>!)?"
    r": (?P<description>.+)$"
)


@dataclass(frozen=True)
class ValidationResult:
    status: str
    reason_code: str
    commit_type: str | None = None
    scope: str | None = None
    breaking: bool = False
    description: str | None = None


def extract_subject(message: str) -> str:
    line, _, _ = message.partition("\n")
    return line.strip()


def is_merge_subject(subject: str) -> bool:
    return subject.startswith("Merge ")


def is_git_revert_subject(subject: str) -> bool:
    return subject.startswith('Revert "')


def validate_subject(
    subject: str,
    *,
    allow_merge_commits: bool,
    allow_git_revert: bool,
    enforce_mcp_skills_scope_policy: bool = True,
) -> ValidationResult:
    if not subject:
        return ValidationResult(status="fail", reason_code="EMPTY_SUBJECT")

    if allow_merge_commits and is_merge_subject(subject):
        return ValidationResult(status="pass", reason_code="MERGE_COMMIT_ALLOWED")

    if allow_git_revert and is_git_revert_subject(subject):
        return ValidationResult(status="pass", reason_code="GIT_REVERT_ALLOWED")

    match = CONVENTIONAL_SUBJECT_RE.match(subject)
    if match is None:
        return ValidationResult(status="fail", reason_code="SUBJECT_NOT_CONVENTIONAL")

    description = (match.group("description") or "").strip()
    if not description:
        return ValidationResult(status="fail", reason_code="EMPTY_DESCRIPTION")

    commit_type = match.group("type")
    scope_group = match.group("scope")
    scope = scope_group[1:-1] if scope_group else None
    if enforce_mcp_skills_scope_policy:
        if commit_type in MCP_SKILLS_TYPES:
            return ValidationResult(
                status="fail",
                reason_code="MCP_SKILLS_TYPE_DEPRECATED_USE_FEAT_SCOPE",
            )
        if scope in MCP_SKILLS_SCOPES and commit_type != "feat":
            return ValidationResult(
                status="fail",
                reason_code="MCP_SKILLS_SCOPE_REQUIRES_FEAT",
            )

    return ValidationResult(
        status="pass",
        reason_code="CONVENTIONAL_HEADER_OK",
        commit_type=commit_type,
        scope=scope,
        breaking=bool(match.group("breaking")),
        description=description,
    )


def validate_message(
    message: str,
    *,
    allow_merge_commits: bool,
    allow_git_revert: bool,
    enforce_mcp_skills_scope_policy: bool = True,
) -> tuple[str, ValidationResult]:
    subject = extract_subject(message)
    result = validate_subject(
        subject,
        allow_merge_commits=allow_merge_commits,
        allow_git_revert=allow_git_revert,
        enforce_mcp_skills_scope_policy=enforce_mcp_skills_scope_policy,
    )
    return subject, result


def collect_commits(rev_range: str) -> list[tuple[str, str]]:
    proc = subprocess.run(
        ["git", "log", "--format=%H%x1f%B%x1e", rev_range],
        text=True,
        capture_output=True,
        check=False,
    )
    if proc.returncode != 0:
        stderr = proc.stderr.strip() or "git log failed"
        raise RuntimeError(stderr)

    commits: list[tuple[str, str]] = []
    for entry in proc.stdout.split("\x1e"):
        record = entry.strip("\n")
        if not record:
            continue
        sha, sep, message = record.partition("\x1f")
        if not sep:
            continue
        commits.append((sha.strip(), message.rstrip()))
    return commits


def build_single_message_summary(
    message: str,
    *,
    allow_merge_commits: bool,
    allow_git_revert: bool,
    enforce_mcp_skills_scope_policy: bool = True,
) -> tuple[dict[str, object], bool]:
    subject, validation = validate_message(
        message,
        allow_merge_commits=allow_merge_commits,
        allow_git_revert=allow_git_revert,
        enforce_mcp_skills_scope_policy=enforce_mcp_skills_scope_policy,
    )
    summary = {
        "version": "v1",
        "generated_at": datetime.now(timezone.utc).isoformat(),
        "status": validation.status,
        "counts": {
            "total": 1,
            "valid": 1 if validation.status == "pass" else 0,
            "invalid": 0 if validation.status == "pass" else 1,
        },
        "message": {
            "subject": subject,
            "status": validation.status,
            "reason_code": validation.reason_code,
            "type": validation.commit_type,
            "scope": validation.scope,
            "breaking": validation.breaking,
            "description": validation.description,
        },
        "rules": {
            "allowed_types": list(ALLOWED_TYPES),
            "allow_merge_commits": allow_merge_commits,
            "allow_git_revert": allow_git_revert,
            "enforce_mcp_skills_scope_policy": enforce_mcp_skills_scope_policy,
        },
    }
    return summary, (validation.status == "pass")


def build_summary(
    rev_range: str,
    commits: list[tuple[str, str]],
    *,
    allow_merge_commits: bool,
    allow_git_revert: bool,
    enforce_mcp_skills_scope_policy: bool = True,
) -> tuple[dict[str, object], bool]:
    commit_rows: list[dict[str, object]] = []
    invalid_count = 0
    for sha, message in commits:
        subject, validation = validate_message(
            message,
            allow_merge_commits=allow_merge_commits,
            allow_git_revert=allow_git_revert,
            enforce_mcp_skills_scope_policy=enforce_mcp_skills_scope_policy,
        )
        if validation.status != "pass":
            invalid_count += 1
        commit_rows.append(
            {
                "sha": sha,
                "subject": subject,
                "status": validation.status,
                "reason_code": validation.reason_code,
                "type": validation.commit_type,
                "scope": validation.scope,
                "breaking": validation.breaking,
                "description": validation.description,
            }
        )

    total = len(commit_rows)
    valid = total - invalid_count
    summary = {
        "version": "v1",
        "generated_at": datetime.now(timezone.utc).isoformat(),
        "status": "pass" if invalid_count == 0 else "fail",
        "rev_range": rev_range,
        "counts": {
            "total": total,
            "valid": valid,
            "invalid": invalid_count,
        },
        "commits": commit_rows,
        "rules": {
            "allowed_types": list(ALLOWED_TYPES),
            "allow_merge_commits": allow_merge_commits,
            "allow_git_revert": allow_git_revert,
            "enforce_mcp_skills_scope_policy": enforce_mcp_skills_scope_policy,
        },
    }
    return summary, (invalid_count == 0)


def parse_args(argv: list[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Validate git commits against the Conventional Commits subject format."
    )
    target = parser.add_mutually_exclusive_group()
    target.add_argument(
        "--rev-range",
        help="Git revision range passed to `git log` (default: HEAD~1..HEAD).",
    )
    target.add_argument(
        "--message-file",
        help="Validate a single commit message from a file path (used by commit-msg hooks).",
    )
    parser.add_argument(
        "--output",
        default="out/conventional-commits-summary.json",
        help="Path to write the JSON summary output.",
    )
    parser.add_argument(
        "--allow-merge-commits",
        action=argparse.BooleanOptionalAction,
        default=True,
        help="Allow merge commit subjects (default: true).",
    )
    parser.add_argument(
        "--allow-git-revert",
        action=argparse.BooleanOptionalAction,
        default=True,
        help='Allow `git revert` auto-generated subjects that start with `Revert "` (default: true).',
    )
    parser.add_argument(
        "--enforce-mcp-skills-scope-policy",
        action=argparse.BooleanOptionalAction,
        default=True,
        help="Require MCP/skills work to use scoped feat form (for example `feat(mcp): ...`).",
    )
    args = parser.parse_args(argv)
    if args.rev_range is None and args.message_file is None:
        args.rev_range = "HEAD~1..HEAD"
    return args


def main(argv: list[str]) -> int:
    args = parse_args(argv)
    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    if args.message_file:
        message_path = Path(args.message_file)
        if not message_path.exists():
            payload = {
                "version": "v1",
                "generated_at": datetime.now(timezone.utc).isoformat(),
                "status": "fail",
                "reason_code": "MESSAGE_FILE_MISSING",
                "error": f"missing commit message file: {message_path}",
            }
            out_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
            print(json.dumps(payload, indent=2))
            return 1
        message = message_path.read_text(encoding="utf-8")
        summary, all_valid = build_single_message_summary(
            message,
            allow_merge_commits=args.allow_merge_commits,
            allow_git_revert=args.allow_git_revert,
            enforce_mcp_skills_scope_policy=args.enforce_mcp_skills_scope_policy,
        )
        summary["message_file"] = str(message_path)
    else:
        try:
            commits = collect_commits(args.rev_range)
        except RuntimeError as exc:
            payload = {
                "version": "v1",
                "generated_at": datetime.now(timezone.utc).isoformat(),
                "status": "fail",
                "rev_range": args.rev_range,
                "reason_code": "GIT_LOG_FAILED",
                "error": str(exc),
            }
            out_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
            print(json.dumps(payload, indent=2))
            return 1

        summary, all_valid = build_summary(
            args.rev_range,
            commits,
            allow_merge_commits=args.allow_merge_commits,
            allow_git_revert=args.allow_git_revert,
            enforce_mcp_skills_scope_policy=args.enforce_mcp_skills_scope_policy,
        )

    out_path.write_text(json.dumps(summary, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, indent=2))
    return 0 if all_valid else 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
