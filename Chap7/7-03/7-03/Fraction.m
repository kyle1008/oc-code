//
//  Fraction.m
//  7-01
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

@end
