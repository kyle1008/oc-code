//
//  main.m
//  13-10
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
//结构
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct date
        {
            int month;
            int day;
            int year;
        };//need ;
        
//初始化方式1
        struct date today;
        today.month = 9;
        today.day = 25;
        today.year = 2014;
        
//初始化方式2
//一条语句初始化所有变量
//      struct date today = { 9, 25, 2014 };
        
//初始化方式3
//只给其中几个变量初始化，其余变量就默认为0
//      struct date today = { .month = 9, .day =25 };
        
        NSLog(@"Today's date is %i/%i/%.2i",today.month, today.day, today.year);
    }
    return 0;
}

/*
Today's date is 9/25/2014
*/