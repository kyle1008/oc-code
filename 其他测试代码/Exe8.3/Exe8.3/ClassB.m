//
//  ClassB.m
//  8.3
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ClassB.h"

@implementation ClassB
-(void) printVar;{
    NSLog(@"x = %i", x);//ClassB继承了ClassA的实例变量x
}
@end
