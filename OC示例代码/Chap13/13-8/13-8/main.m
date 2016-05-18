//
//  main.m
//  13-8
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int foo = 100;
        
        void (^printFoo)(void) =
        ^(void) {
            NSLog(@"foo = %i",foo);
        };
        
    foo = 15;
    printFoo();
        
    }
    return 0;
}
