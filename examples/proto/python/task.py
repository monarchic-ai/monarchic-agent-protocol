from monarchic_agent_protocol import monarchic_agent_protocol_pb2 as map_pb2


def main() -> None:
    task = map_pb2.Task(
        version="v1",
        task_id="task-123",
        role=map_pb2.AgentRole.DEV,
        goal="Implement protocol",
    )
    print(task)


if __name__ == "__main__":
    main()
