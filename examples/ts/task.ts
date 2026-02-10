import { Task } from "../src/ts/index";

const task: Task = {
  version: "v1",
  task_id: "task-123",
  role: "dev",
  goal: "Implement protocol types",
  gates_required: ["qa", "security"],
  run_context: {
    version: "v1",
    repo: "monarchic-agent-protocol",
    worktree: "/worktrees/task-123",
    image: "ghcr.io/monarchic/runner:stable",
    runner: "vm-runner-01",
    labels: ["linux", "rust"],
  },
};

console.log(JSON.stringify(task, null, 2));
