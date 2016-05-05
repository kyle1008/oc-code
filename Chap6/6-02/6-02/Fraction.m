//
//  Fraction.m
//  6-02
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator, denominator;
}
-(double) convertTonumber;{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
-(void)print;{
    NSLog(@"%i/%i",numerator, denominator);
}
-(void)setNumerator: (int)n;{
    numerator = n;
}
-(void)setDenominator: (int)d;{
    denominator = d;
}
-(int) numerator;{
    return numerator;
}
-(int) denominator;{
    return denominator;
}

@end
