//
//  Fraction.m
//  11.2
//
//  Created by kongyunpeng on 3/15/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
-(void)reduce {
    int u = _numerator;
    int v = _denominator;
    int temp;
    while (u % v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    _numerator /= v ;
    _denominator /= v;
}
@end
