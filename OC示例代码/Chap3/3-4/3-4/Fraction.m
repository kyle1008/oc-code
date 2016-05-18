//
//  Fraction.m
//  3-4
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator,denominator;
}

-(void) print;{
    NSLog(@"%i/%i",numerator,denominator);
}

//设值方法（setter）不返回任何值；目的是将方法参数设为对应的实例变量的值
-(void) setNumerator: (int) n;{
    numerator = n;
}
-(void) setDenominator: (int) d;{
    denominator = d;
}

//取值方法（getter）；目的是获取存储在对象中的实例变量的值
-(int) numerator;{
    return numerator;
}
-(int) denominator;{
    return denominator;
}
@end
