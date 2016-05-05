//
//  main.m
//  5-09
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n ,rd;
        NSLog(@"Enter ur number:");
        scanf("%i",&n);
        do {
            rd = n % 10;
            n /= 10;
            NSLog(@"%i",rd);
            
        } while (n != 0);
    }
    return 0;
}
