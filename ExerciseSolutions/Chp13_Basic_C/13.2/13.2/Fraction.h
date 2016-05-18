//
//  Fraction.h
//  13.2
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(void)reduce;
-(void)print;
static Fraction* gcd(Fraction *f1);
@end
