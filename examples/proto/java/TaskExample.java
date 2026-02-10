import monarchic.agent_protocol.v1.AgentRole;
import monarchic.agent_protocol.v1.Task;

public class TaskExample {
  public static void main(String[] args) {
    Task task = Task.newBuilder()
        .setVersion("v1")
        .setTaskId("task-123")
        .setRole(AgentRole.DEV)
        .setGoal("Implement protocol")
        .build();

    System.out.println(task);
  }
}
