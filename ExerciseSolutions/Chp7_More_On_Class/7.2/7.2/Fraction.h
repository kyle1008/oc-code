//
//  Fraction.h
//  7.2
//
//  Created by trainer on 3/10/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(void)print:(BOOL)isReduced;
@end
