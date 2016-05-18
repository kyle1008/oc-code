//
//  main.m
//  15.1
//
//  Created by kongyunpeng on 3/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+ElapsedDays.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *curr = [NSDate date];
        NSTimeInterval secondPerday = 24 * 60 * 60;
        NSDate *tomorrow = [NSDate dateWithTimeIntervalSinceNow:secondPerday];
        NSDate *date2 = [NSDate distantFuture];
        NSLog(@"%lu",[curr elapsedDays:tomorrow]);
        NSLog(@"%lu",[curr elapsedDays:date2]);
        
#pragma mark - NSDateFormatter Create date
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSDate *date3 = [formatter dateFromString:@"2016-3-17 12:30:21"];
        
        NSLog(@"%lu",[curr elapsedDays:date3]);
       
#pragma mark - NSDateComponents and NSCalendar create date
        NSDateComponents *components = [[NSDateComponents alloc] init];
        components.year = 2016;
        components.month = 3;
        components.day = 17;
        components.hour = 12;
        components.minute = 30;
        components.second = 21;
        NSCalendar *cale = [NSCalendar currentCalendar];
        NSDate *date4 = [cale dateFromComponents:components];
        
        NSLog(@"%lu",[curr elapsedDays:date4]);
    }
    return 0;
}
