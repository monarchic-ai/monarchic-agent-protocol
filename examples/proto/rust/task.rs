mod monarchic {
  pub mod agent_protocol {
    pub mod v1 {
      include!(concat!(env!("OUT_DIR"), "/monarchic.agent_protocol.v1.rs"));
    }
  }
}

use monarchic::agent_protocol::v1::{AgentRole, Task};

fn main() {
  let task = Task {
    version: "v1".to_string(),
    task_id: "task-123".to_string(),
    role: AgentRole::Dev as i32,
    goal: "Implement protocol".to_string(),
    inputs: None,
    constraints: None,
    gates_required: Vec::new(),
    run_context: None,
    extensions: None,
  };

  println!("{task:?}");
}
