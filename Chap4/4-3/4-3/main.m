//
//  main.m
//  4-3
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 25;
        int b = 2;
        float c = 25.0;
        float d = 2.0;
        
        NSLog(@"6 + a / 5 * b = %i ", 6 + a / 5 * b);
        NSLog(@"a / b * b = %i", a / b * b);
        NSLog(@"c / d * d = %f", c / d * d);
        NSLog(@"-a = %i", -a);
        
    }
    return 0;
}
