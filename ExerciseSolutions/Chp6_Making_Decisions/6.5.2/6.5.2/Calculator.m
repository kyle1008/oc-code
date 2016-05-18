//
//  Calculator.m
//  6.5.2
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
-(void)setAccumulator:(double)value {
    accumulator = value;
}
-(void)clear {
    accumulator = 0;
}
-(double)accumulator {
    return accumulator;
}

-(void)add:(double)value {
    accumulator += value;
}
-(void)substract:(double)value {
    accumulator -= value;
}
-(void)multiply:(double)value {
    accumulator *= value;
}
-(void)divide:(double)value {
    accumulator /= value;
}
@end
