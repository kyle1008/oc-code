//
//  Fraction+Comparison.m
//  11.2
//
//  Created by kongyunpeng on 3/15/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)
-(BOOL)isEqual:(Fraction *)f {
    [self reduce];
    if (self.numerator == f.numerator && f.denominator == self.denominator) {
        return YES;
    } else {
        return NO;
    }
}

- (int)compare:(Fraction *)f {
    int result = self.numerator * f.denominator - self.denominator * f.numerator;
    if (result < 0) {
        return -1;
    } else if (result == 0) {
        return 0;
    } else {
        return 1;
    }
    
}
@end
