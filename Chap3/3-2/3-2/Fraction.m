//
//  Fraction.m
//  3-2
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator,denominator;//声明Fraction对象的实例变量
}

-(void) print;{
    NSLog(@"%i/%i",numerator,denominator);
}

-(void) setNumerator: (int)n;{
    numerator = n;
}

-(void) setDenominator: (int)d;{
    denominator = d;
}

@end
