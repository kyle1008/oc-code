//
//  Fraction.m
//  7-06
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize num, den;

-(void) print;{
    NSLog(@"%i/%i", num, den);
}
-(double) convertToNum;{
    if (den != 0)
        return (double) num / den;
    else
        return NAN;
}
-(void) setTo: (int)n over: (int) d;{
    num = n;
    den = d;
}

//新的相加方法
-(Fraction *) add: (Fraction *) f;{
    Fraction *result = [[Fraction alloc] init];
    result.num = num * f.den + f.num * den;
    result.den = den * f.den;
    [result reduce];//方法内约简，关键字self指明对象时当前方法的接收者
    return result;
}

-(void) reduce;{
    int u = num, v = den, temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v =temp;
    }
    num /= u;
    den /= u;
}
@end
