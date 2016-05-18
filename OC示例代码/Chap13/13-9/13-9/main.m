//
//  main.m
//  13-9
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        __block int foo = 10;//int fool之前插入_ _block，line18才可以重新给fool赋值，否则编译报错
        
        void (^printFoo)(void) =
        ^(void){
            NSLog(@"foo = %i", foo);
            foo =20;          //重新赋值
        };
        foo = 15;
        
        printFoo();
        NSLog(@"foo = %i",foo);
    }
    return 0;
}

/*
foo = 15
foo = 20
*/