//
//  main.m
//  6-05-leap_year
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year, rem_4, rem_100, rem_400;
        NSLog(@"Enter ur year to be test:");
        scanf("%i",&year);
        
        rem_4 = year % 4;
        rem_100 = year % 100;
        rem_400 = year % 400;
        
        if ((rem_4 == 0 && rem_100 != 0) || rem_400 == 0)
            NSLog(@"It's a leap year.");
        else
        NSLog(@"Nope,it's not a leap year");
    }
    return 0;
}
