//
//  main.m
//  6-06
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, sign;
        NSLog(@"enter ur number:");
        scanf("%i", &n);
        
        if (n < 0)
            sign = -1;
        else if(n == 0)
            sign = 0;
        else
            sign = 1;
        NSLog(@"sign = %i", sign);
    }
    return 0;
}
