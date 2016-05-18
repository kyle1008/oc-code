//
//  main.m
//  13-6
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

//块(block)的使用,定义在main函数内
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^printMessage)(void) =
        ^(void){
            NSLog(@"Programming is fun.");
        };
        printMessage();
    }
    return 0;
}
