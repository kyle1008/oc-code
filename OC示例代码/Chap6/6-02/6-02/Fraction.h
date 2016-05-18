//
//  Fraction.h
//  6-02
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(double) convertTonumber;
-(void)print;
-(void)setNumerator: (int)n;
-(void)setDenominator: (int)d;
-(int) numerator;
-(int) denominator;

@end
