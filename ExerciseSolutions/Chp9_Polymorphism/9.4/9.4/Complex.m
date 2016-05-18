




//
//  Complex.m
//  9.4
//
//  Created by kongyunpeng on 4/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Complex.h"
@interface Complex ()
-(void)privateCallIfYouKnowTheName;
@end
@implementation Complex
-(id)add:(Complex *)c {
    Complex *result = [[Complex alloc] init];
    result.real = _real + c.real;
    result.imaginary = _imaginary + c.imaginary;

    return result;
}
-(void)print; {
    NSLog(@"the complext is %d + %di",_real,_imaginary);
}

-(void)setReal:(int)real imaginary:(int)imag; {
    _real = real;
    _imaginary = imag;
}
@end
