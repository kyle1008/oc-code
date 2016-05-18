//
//  main.m
//  13-11
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int count = 10, x;
        int *intptr;
        
        intptr = &count;//存放东西的地址编号
        x = *intptr;    //实际存放的东西
        
        NSLog(@"count = %i, x = %i",count, x);
    }
    return 0;
}
/*
count = 10, x = 10
*/