//
//  main.m
//  13-3
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//
//
#import <Foundation/Foundation.h>
//函数的声明，必须写在main函数的前面
void printMessage (void)
{
    NSLog(@"Programming is fun.");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printMessage(); //函数的调用
    }
    return 0;
}

/*
Programming is fun.
*/