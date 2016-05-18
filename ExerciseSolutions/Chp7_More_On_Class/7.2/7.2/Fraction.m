//
//  Fraction.m
//  7.2
//
//  Created by trainer on 3/10/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(Fraction *)reduce {
    Fraction *frac = [[Fraction alloc] init];
    int u, v ,temp;
    u = _numerator, v = _denominator;
    while (u % v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
  frac.numerator = _numerator / v;
  frac.denominator = _denominator / v;
    return frac;
}

-(void)print:(BOOL)isReduced {
    Fraction *frac = [self reduce];
    if (isReduced) {
    [frac reduce];
    } else {
        frac = self;
    }
    printf("the fraction is %i/%i\n",frac.numerator,frac.denominator);

}
@end
