//
//  main.m
//  6-04
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//
//判断奇数偶数if-else
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, remainder;
        
        NSLog(@"type ur number to be tested:");
        scanf("%i",&n);
        
        remainder = n % 2;
        
        if (remainder != 0)
            NSLog(@"%i is odd", n);
        else
            NSLog(@"%i is even", n);
    }
    return 0;
}