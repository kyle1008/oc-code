


//
//  Fraction.m
//  13.2
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Fraction.h"
static Fraction* gcd(Fraction *f1) {
    int u = f1.numerator,v = f1.denominator,temp = 0;
    while (u % v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    Fraction *result = [[Fraction alloc] init];
    result.numerator =  f1.numerator / v;
    result.denominator = f1.denominator / v;
    return result;

}
@implementation Fraction
-(void)reduce {
    int u = _numerator,v = _denominator,temp;

    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }

    _numerator /= u ;
    _denominator /= u;

}
-(void)print {
    printf("the fraction is %i/%i\n",_numerator,_denominator);

}
@end
