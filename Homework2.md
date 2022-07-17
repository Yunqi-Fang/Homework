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
```

