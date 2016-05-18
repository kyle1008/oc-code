//
//  main.m
//  8-01
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        
        [b initVar];//ClassB继承了ClassA的方法initVar；
        [b printVar];//ClassB自己的方法printVar；

    }
    return 0;
}
