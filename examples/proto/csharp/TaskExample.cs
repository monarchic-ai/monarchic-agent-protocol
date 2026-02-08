using System;
using Monarchic.AgentProtocol.V1;

public class TaskExample {
  public static void Main(string[] args) {
    var task = new Task {
      Version = "v1",
      TaskId = "task-123",
      Role = AgentRole.Dev,
      Goal = "Implement protocol"
    };

    Console.WriteLine(task);
  }
}
