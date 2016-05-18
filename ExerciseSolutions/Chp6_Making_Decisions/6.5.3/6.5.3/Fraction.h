//
//  Fraction.h
//  6.5.3
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(void)print;

-(void) inPutNumerator: (int) n;

-(void) inPutDenominator: (int) d;
@end
