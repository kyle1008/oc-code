//
//  NSDate+ElapsedDays.m
//  15.1
//
//  Created by kongyunpeng on 3/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "NSDate+ElapsedDays.h"

@implementation NSDate (ElapsedDays)
-(unsigned long) elapsedDays: (NSDate *)theDate {
    NSTimeInterval interval = [self timeIntervalSinceDate:theDate];
    if (interval < 0) {
        interval = -interval;
    }
    return  (unsigned long)interval / (1 * 24 * 60 * 60);
}
@end
