


//
//  Fraction.m
//  9.4
//
//  Created by kongyunpeng on 4/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Fraction.h"
@interface Fraction (Mathops)
-(id)add:(Fraction *)f;
@end
@implementation Fraction
-(void)set:(int)n over:(int)d; {
    _numberator = n;
    _denominator = d;

}


-(void)print {
    NSLog(@"the fraction is %i/%i",_numberator,_denominator);
}
@end

@implementation Fraction(Mathops)
//@synthesize numberator = _numberator, denominator = _denominator;
-(id)add:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numberator = _numberator * f.denominator + _denominator * f.numberator;
    result.denominator = _denominator * f.denominator;
    return result;
}
@end


