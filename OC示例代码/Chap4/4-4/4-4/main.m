//
//  main.m
//  4-4
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 25, b = 5, c = 10, d =7 ;
        
        NSLog(@"a %% b = %i",a % b);
        NSLog(@"a %% c = %i",a % c);
        NSLog(@"a %% d = %i",a % d);
        
        //a,b均为int型时  a/d*d+a%d=a
        NSLog(@"a / d * d +a %% d = %i",a / d * d +a % d);
        
        
    }
    return 0;
}
