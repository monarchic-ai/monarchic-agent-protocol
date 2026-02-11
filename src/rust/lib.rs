pub const PROTOCOL_VERSION: &str = "v1";

pub mod monarchic {
    pub mod agent_protocol {
        pub mod v1 {
            include!(concat!(env!("OUT_DIR"), "/monarchic.agent_protocol.v1.rs"));
        }
    }
}

pub use monarchic::agent_protocol::v1::{AgentRole, Artifact, Event, GateResult, RunContext, Task};
