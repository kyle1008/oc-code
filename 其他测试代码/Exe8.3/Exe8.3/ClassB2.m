//
//  ClassB2.m
//  Exe8.3
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ClassB2.h"

@implementation ClassB2
-(void) square;{
    NSLog(@"x^2 = %i", x * x);//ClassB继承了ClassA的实例变量x
}
@end
