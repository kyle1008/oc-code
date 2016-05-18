//
//  main.m
//  5-07-gcd
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int u, v, temp;
        
        NSLog(@"Plz type in two nonnegative integers:");
        scanf("%u%u",&u, &v);
        
        while (v != 0) {
            temp = u % v;
            u = v;
            v =temp;
        }
        NSLog(@"greatest common divisor(gcd) is %u", u);
    }
    return 0;
}
