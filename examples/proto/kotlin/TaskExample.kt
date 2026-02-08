import ai.monarchic.agent_protocol.v1.AgentRole
import ai.monarchic.agent_protocol.v1.Task

fun main() {
  val task = Task.newBuilder()
    .setVersion("v1")
    .setTaskId("task-123")
    .setRole(AgentRole.DEV)
    .setGoal("Implement protocol")
    .build()

  println(task)
}
