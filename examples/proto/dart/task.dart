import 'monarchic_agent_protocol.pb.dart';

void main() {
  final task = Task()
    ..version = 'v1'
    ..taskId = 'task-123'
    ..role = AgentRole.DEV
    ..goal = 'Implement protocol';

  print(task);
}
