//
//  main.m
//  6-01
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        NSLog(@"Type ur number:");
        scanf("%i",&n);
        if (n < 0) {
            n = -n;
        }
        NSLog(@"The absolute value is %i", n);
    }
    return 0;
}
