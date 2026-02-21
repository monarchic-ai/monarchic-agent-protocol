use monarchic_agent_protocol::{AgentRole, RunContext, Task, PROTOCOL_VERSION};
use prost_types::Struct;

fn main() {
    let task = Task {
        version: PROTOCOL_VERSION.to_string(),
        task_id: "task-123".to_string(),
        role: AgentRole::Dev as i32,
        goal: "Implement protocol types".to_string(),
        inputs: None,
        constraints: None,
        gates_required: vec!["qa".to_string(), "security".to_string()],
        run_context: Some(RunContext {
            version: PROTOCOL_VERSION.to_string(),
            repo: "monarchic-agent-protocol".to_string(),
            worktree: "/worktrees/task-123".to_string(),
            image: "ghcr.io/monarchic/runner:stable".to_string(),
            runner: "vm-runner-01".to_string(),
            labels: vec!["linux".to_string(), "rust".to_string()],
            extensions: Some(Struct::default()),
        }),
        objective_spec: None,
        extensions: Some(Struct::default()),
        experiment_spec: None,
        delivery_contract: None,
    };

    println!("{}", task.task_id);
}
