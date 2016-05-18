//
//  Calculator.m
//  4-6
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import "Calculator.h"
#import "Calculator.h"
@implementation Calculator

{
    double accumulator;
}

//累加器设值方法
-(void) setAccumulator: (double)n;{
    accumulator = n;
}

-(double) accumulator;{              //累加器取值方法
    return accumulator;
}

-(void)clear;{
    accumulator = 0;
}

//算术方法
-(void) add:(double)value;{
    accumulator += value;
}
-(void) subtract:(double)value;{
    accumulator -= value;
}
-(void) multiply:(double)value;{
    accumulator *= value;
}
-(void) divide:(double)value;{
    accumulator /=value;
}


@end
