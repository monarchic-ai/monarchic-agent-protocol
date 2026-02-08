<?php

require_once "vendor/autoload.php";

use Monarchic\AgentProtocol\V1\AgentRole;
use Monarchic\AgentProtocol\V1\Task;

$task = new Task();
$task->setVersion("v1");
$task->setTaskId("task-123");
$task->setRole(AgentRole::DEV);
$task->setGoal("Implement protocol");

echo $task, PHP_EOL;
