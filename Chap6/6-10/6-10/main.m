//
//  main.m
//  6-10
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        for (int n = 1; n <= 50; ++n) {
            int isPrime = 1;
            for (int i = 2; i <= n/2; ++i){
                if (n % i == 0)
                    isPrime = 0;
            }
        if (isPrime != 0)
            NSLog(@"%i",n);
        }
    }
    return 0;
}
