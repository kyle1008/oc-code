//
//  main.m
//  8.3
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassB.h"
#import "ClassB2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        ClassB2 *b2 = [[ClassB2 alloc] init];
        
        [b initVar];//ClassB继承了ClassA的方法initVar；
        [b printVar];//ClassB自己的方法printVar；
        
        [b2 initVar];//ClassB2也继承了ClassA的方法initVar；
        [b2 square];//ClassB2自己的方法printVar2；

    }
    return 0;
}

//ClassB,ClassB2都是ClassA的子类，ClassA是NSObejct的子类；
//一个类可以有多个子类，只能有一个超类；