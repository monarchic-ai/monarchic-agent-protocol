#import <Foundation/Foundation.h>
#import "MonarchicAgentProtocol.pbobjc.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    MAPTask *task = [MAPTask message];
    task.version = @"v1";
    task.taskId = @"task-123";
    task.role = MAPAgentRoleDev;
    task.goal = @"Implement protocol";

    NSLog(@"%@", task);
  }
  return 0;
}
