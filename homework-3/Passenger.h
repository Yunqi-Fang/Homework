//
//  Passenger.h
//
//  Created by Wang Shuo on 2022/7/25.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property (nonatomic, copy) NSString *passengerName;
@property (nonatomic, copy) NSString *trainNumber;
@property (nonatomic, assign) NSInteger seatNumber;
@property (nonatomic, assign) NSDate *starttime;
@property (nonatomic, assign) NSInteger fare;

- (instancetype)initOrders:(NSString *)passengerName trainnumber:(NSString *)trainNumber seatnumber:(NSInteger)seatNumber starttime:(NSDate *)starttime fare:(NSInteger)fare;

@end

@interface Passenger : Person

@property (nonatomic, assign) BOOL isAdult;
@property (nonatomic, strong) NSMutableArray *OrderHistory;
@property(nonatomic, strong) NSMutableArray *OutstandingOrder;

- (void)booking:(Orders *) order;
- (void)checkin:(Orders *) order;

@end

NS_ASSUME_NONNULL_END
