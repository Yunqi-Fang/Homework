```objective-c
// Student.h
@interface Student:NSObject{
    NSString * name;
    NSString * major;
    NSInteger age;
}

- (void)study:(CGFloat)time;

@end
```

```objective-c
// Student.m
#import "Student.h"
@implementation Student
    
- (void)study:(CGFloat)time {
    NSLog(@"%f", time);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student * student = [[Student alloc] init];
        [student study:12.1];
    }
    return 0;
}
```

