//
//  Fraction.m
//  7.1
//
//  Created by trainer on 3/10/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
//subtract argument from receiver
-(Fraction *) substract: (Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = _numerator * f.denomiator - _denomiator * f.numerator;
    result.denomiator = _denomiator * f.denomiator;
    return result;
}

// multiply receiver by argument
-(Fraction *) multiply: (Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = _numerator * f.numerator;
    result.denomiator = _denomiator * f.denomiator;
    return  result;
}

// divide receiver by argument
-(Fraction *) divide: (Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = _numerator * f.denomiator;
    result.denomiator = _denomiator * f.numerator;
    return result;
}
-(void)print {
    printf("the fraction is %i/%i\n",_numerator,_denomiator);
}
@end
