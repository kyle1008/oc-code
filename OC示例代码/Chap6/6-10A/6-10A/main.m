//
//  main.m
//  6-10A
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        for (int n = 1; n <= 50; ++n) {
            BOOL isPrime = YES;
            for (int i = 2; i <= n/2; ++i){
                if (n % i == 0)
                    isPrime = NO;
            }
            if (isPrime == YES)
                NSLog(@"%i",n);
        }
    }
    return 0;
}