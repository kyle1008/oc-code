//
//  main.m
//  4-2
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 100;
        int b = 2;
        int c = 25;
        int d = 4;
        int result;
        
        result = a - b;
        NSLog(@"a - b = %i",result);
        result = b * c;
        NSLog(@"b * c = %i",result);
        result = a / b;
        NSLog(@"a / b = %i",result);
        result = a + b * c;
        NSLog(@"a + b * c = %i",result);
        
        NSLog(@"a * b + c * d = %i",a * b + c * d);
    }
    return 0;
}
