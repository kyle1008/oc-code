



//
//  Fraction.m
//  13.4
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
-(void)setTo:(int)n over:(int)d; {
    _numerator = n;
    _denominator = d;
}
-(Fraction *)add:(Fraction *)f {
   Fraction *result = [[Fraction alloc] init];
    self.numerator = _numerator * f.denominator +_denominator * f.numerator;
    self.denominator = _denominator * f.denominator;

    return result;
}

-(void)print {
    NSLog(@"the fraction is %d/%d",_numerator,_denominator);
}
@end
