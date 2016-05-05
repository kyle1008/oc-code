//
//  Fraction.h
//  3-4
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;

-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

-(int) numerator;
-(int) denominator;

@end
