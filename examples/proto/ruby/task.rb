require "monarchic/agent_protocol/v1/monarchic_agent_protocol_pb"

task = Monarchic::AgentProtocol::V1::Task.new(
  version: "v1",
  task_id: "task-123",
  role: Monarchic::AgentProtocol::V1::AgentRole::DEV,
  goal: "Implement protocol"
)

puts task
