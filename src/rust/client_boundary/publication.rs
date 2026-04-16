use serde::{Deserialize, Serialize};

use crate::version::CLIENT_BOUNDARY_CONTRACT_VERSION;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum PublicationActionKind {
    #[default]
    Unspecified,
    CommitSplit,
    CreateBranch,
    PushBranch,
    OpenPullRequest,
    UpdatePullRequest,
    MergePullRequest,
    CreateTag,
    CreateRelease,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize, Default)]
#[serde(rename_all = "snake_case")]
pub enum PublicationActionStatus {
    #[default]
    Unspecified,
    Planned,
    Ready,
    Blocked,
    Applied,
    Failed,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "PublicationTargetRefUnchecked", deny_unknown_fields)]
pub struct PublicationTargetRef {
    pub repo: String,
    pub base_branch: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub head_branch: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub base_commit: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub remote: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct PublicationTargetRefUnchecked {
    repo: String,
    base_branch: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    head_branch: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    base_commit: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    remote: Option<String>,
}

impl TryFrom<PublicationTargetRefUnchecked> for PublicationTargetRef {
    type Error = String;

    fn try_from(value: PublicationTargetRefUnchecked) -> Result<Self, Self::Error> {
        require_non_empty("publication target repo", &value.repo)?;
        require_non_empty("publication target base_branch", &value.base_branch)?;
        require_optional_non_empty(
            "publication target head_branch",
            value.head_branch.as_deref(),
        )?;
        require_optional_non_empty(
            "publication target base_commit",
            value.base_commit.as_deref(),
        )?;
        require_optional_non_empty("publication target remote", value.remote.as_deref())?;

        Ok(Self {
            repo: value.repo,
            base_branch: value.base_branch,
            head_branch: value.head_branch,
            base_commit: value.base_commit,
            remote: value.remote,
        })
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "PublicationPullRequestRefUnchecked", deny_unknown_fields)]
pub struct PublicationPullRequestRef {
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub number: Option<u64>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub url: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub title: Option<String>,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct PublicationPullRequestRefUnchecked {
    #[serde(default, skip_serializing_if = "Option::is_none")]
    number: Option<u64>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    url: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    title: Option<String>,
}

impl TryFrom<PublicationPullRequestRefUnchecked> for PublicationPullRequestRef {
    type Error = String;

    fn try_from(value: PublicationPullRequestRefUnchecked) -> Result<Self, Self::Error> {
        require_optional_non_empty("publication pull_request url", value.url.as_deref())?;
        require_optional_non_empty("publication pull_request title", value.title.as_deref())?;
        if value.number.is_none() && value.url.is_none() && value.title.is_none() {
            return Err(String::from(
                "publication pull_request must include number, url, or title",
            ));
        }

        Ok(Self {
            number: value.number,
            url: value.url,
            title: value.title,
        })
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "PublicationActionUnchecked", deny_unknown_fields)]
pub struct PublicationAction {
    pub contract_version: String,
    pub action_id: String,
    pub run_id: String,
    pub plan_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub task_id: Option<String>,
    #[serde(default)]
    pub kind: PublicationActionKind,
    #[serde(default)]
    pub status: PublicationActionStatus,
    pub actor: String,
    pub target: PublicationTargetRef,
    pub summary: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub commit_message: Option<String>,
    #[serde(default)]
    pub artifact_ids: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub pull_request: Option<PublicationPullRequestRef>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub failure_reason: Option<String>,
    #[serde(default)]
    pub dry_run: bool,
    pub created_at: u64,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct PublicationActionUnchecked {
    #[serde(default = "default_contract_version")]
    contract_version: String,
    action_id: String,
    run_id: String,
    plan_id: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    task_id: Option<String>,
    #[serde(default)]
    kind: PublicationActionKind,
    #[serde(default)]
    status: PublicationActionStatus,
    actor: String,
    target: PublicationTargetRef,
    summary: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    commit_message: Option<String>,
    #[serde(default)]
    artifact_ids: Vec<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pull_request: Option<PublicationPullRequestRef>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    failure_reason: Option<String>,
    #[serde(default)]
    dry_run: bool,
    created_at: u64,
}

fn default_contract_version() -> String {
    CLIENT_BOUNDARY_CONTRACT_VERSION.to_string()
}

impl TryFrom<PublicationActionUnchecked> for PublicationAction {
    type Error = String;

    fn try_from(value: PublicationActionUnchecked) -> Result<Self, Self::Error> {
        require_non_empty(
            "publication action contract_version",
            &value.contract_version,
        )?;
        require_non_empty("publication action action_id", &value.action_id)?;
        require_non_empty("publication action run_id", &value.run_id)?;
        require_non_empty("publication action plan_id", &value.plan_id)?;
        require_optional_non_empty("publication action task_id", value.task_id.as_deref())?;
        require_non_empty("publication action actor", &value.actor)?;
        require_non_empty("publication action summary", &value.summary)?;
        require_optional_non_empty(
            "publication action commit_message",
            value.commit_message.as_deref(),
        )?;
        require_optional_non_empty(
            "publication action failure_reason",
            value.failure_reason.as_deref(),
        )?;
        for artifact_id in &value.artifact_ids {
            require_non_empty("publication action artifact_id", artifact_id)?;
        }

        if matches!(value.kind, PublicationActionKind::Unspecified) {
            return Err(String::from(
                "publication action kind must not be unspecified",
            ));
        }
        if matches!(value.status, PublicationActionStatus::Unspecified) {
            return Err(String::from(
                "publication action status must not be unspecified",
            ));
        }
        if matches!(
            value.status,
            PublicationActionStatus::Blocked | PublicationActionStatus::Failed
        ) && value.failure_reason.is_none()
        {
            return Err(String::from(
                "blocked or failed publication actions must include failure_reason",
            ));
        }
        if matches!(
            value.kind,
            PublicationActionKind::OpenPullRequest
                | PublicationActionKind::UpdatePullRequest
                | PublicationActionKind::MergePullRequest
        ) && matches!(value.status, PublicationActionStatus::Applied)
            && value.pull_request.is_none()
        {
            return Err(String::from(
                "applied pull request publication actions must include pull_request",
            ));
        }

        Ok(Self {
            contract_version: value.contract_version,
            action_id: value.action_id,
            run_id: value.run_id,
            plan_id: value.plan_id,
            task_id: value.task_id,
            kind: value.kind,
            status: value.status,
            actor: value.actor,
            target: value.target,
            summary: value.summary,
            commit_message: value.commit_message,
            artifact_ids: value.artifact_ids,
            pull_request: value.pull_request,
            failure_reason: value.failure_reason,
            dry_run: value.dry_run,
            created_at: value.created_at,
        })
    }
}

fn require_non_empty(label: &str, value: &str) -> Result<(), String> {
    if value.trim().is_empty() {
        return Err(format!("{label} must not be empty"));
    }
    Ok(())
}

fn require_optional_non_empty(label: &str, value: Option<&str>) -> Result<(), String> {
    if value.is_some_and(|entry| entry.trim().is_empty()) {
        return Err(format!("{label} must not be empty when present"));
    }
    Ok(())
}
