//
//  Calculator.m
//  6-08
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
}
-(void) setAccumulator: (double)value;{
    accumulator = value;
}
-(void) clear;{
    accumulator = 0;
}
- (double) accumulator;{
    return accumulator;
}

-(void) add: (double)value;{
    accumulator += value;
}
-(void) sub: (double)value;{
    accumulator -= value;
}
-(void) mul: (double)value;{
    accumulator *= value;
}
-(void) div: (double)value;{
    accumulator /= value;
}
@end
