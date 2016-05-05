//
//  main.m
//  5-08
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//
//颠倒显示数字各位数
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, rd;
        NSLog(@"Enter your number:");
        scanf("%i",&n);
        
        while (n != 0) {
            rd = n % 10;
            n /= 10;
            NSLog(@"%i",rd);
        }
    }
    return 0;
}
