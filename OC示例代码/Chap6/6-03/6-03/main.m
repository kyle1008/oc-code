//
//  main.m
//  6-03-odd_even
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, remainder;
        NSLog(@"type ur number to be tested:");
        scanf("%i",&n);
        remainder = n % 2;
        if (remainder != 0)
            NSLog(@"%i is odd", n);
        if (remainder != 0)
            NSLog(@"%i is even", n);
    }
    return 0;
}
