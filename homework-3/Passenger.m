//
//  Passenger.m
//
//  Created by Wang Shuo on 2022/7/25.
//

#import "Passenger.h"


@implementation Orders

- (instancetype)initOrders:(NSString *)passengerName trainnumber:(NSString *)trainNumber seatnumber:(NSInteger)seatNumber starttime:(NSDate *)starttime fare:(NSInteger)fare{
    if(self = [super init]){
        [self createOrders:passenderName trainnumber:trainNumber seatnumber:seatNumber starttime:starttime fare:fare];
    }
    return self;
}

-(void)createOrders:(NSString *)passengerName trainnumber:(NSString *)trainNumber seatnumber:(NSInteger)seatNumber starttime:(NSDate *)starttime fare:(NSInteger)fare{
    self.passengerName = passengerName;
    self.trainNumber = trainNumber;
    self.seatNumber = seatNumber;
    self.starttime = starttime;
    self.fare = fare;
}

@end

@implementation Passenger

- (void)booking:(Orders *) order{
    [self.OutstandingOrder addObject:order];
}

- (void)checkin:(Orders *) order{
    [self.OutstandingOrder removeObject:order];
    [self.OrderHistory addObject:order];
}

@end
