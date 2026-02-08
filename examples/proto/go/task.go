package main

import (
  "fmt"

  agent_protocolv1 "github.com/monarchic-ai/monarchic-agent-protocol/gen/go/monarchic/agent_protocol/v1"
)

func main() {
  task := &agent_protocolv1.Task{
    Version: "v1",
    TaskId:  "task-123",
    Role:    agent_protocolv1.AgentRole_DEV,
    Goal:    "Implement protocol",
  }

  fmt.Println(task)
}
