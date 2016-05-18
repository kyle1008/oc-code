//
//  Fraction.h
//  13.4
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(Fraction *)add:(Fraction *)f ;
-(void)print;
-(void)setTo:(int)n over:(int)d;
@end
