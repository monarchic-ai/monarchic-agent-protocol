#include "monarchic_agent_protocol.pb.h"
#include <iostream>

int main() {
  monarchic::agent_protocol::v1::Task task;
  task.set_version("v1");
  task.set_task_id("task-123");
  task.set_role(monarchic::agent_protocol::v1::DEV);
  task.set_goal("Implement protocol");

  std::cout << task.ShortDebugString() << std::endl;
  return 0;
}
