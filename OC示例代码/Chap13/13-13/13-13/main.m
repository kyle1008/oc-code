//
//  main.m
//  13-13
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct date
        {
            int month;
            int day;
            int year;
        };
        
        struct date today, *dateptr;
        
        dateptr = &today;
        
        dateptr->month = 9;//结构指针运算符 ->
        dateptr->day = 25;//(*dateptr).day = 25;
        dateptr->year = 2014;
        
        NSLog(@"Today is %i/%i/%.2i",dateptr->month, dateptr->day, dateptr->year % 100);
    }
    return 0;
}
