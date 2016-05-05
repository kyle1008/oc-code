//
//  Fraction.m
//  7-01
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

//@property-@synthesize存取方法
@synthesize num, den;

//{
//    int den, num;
//}
-(void) print;{
    NSLog(@"%i/%i", num, den);
}
-(double) convertToNum;{
    if (den != 0)
        return (double) num / den;
    else
        return NAN;
}

//设值取值方法
//-(void) setNum: (int) n;{
//    num = n;
//}
//-(void) setDen: (int) d;{
//    den = d;
//}
//
//-(int) num;{
//    return num;
//}
//-(int) den;{
//    return den;
//}


@end
