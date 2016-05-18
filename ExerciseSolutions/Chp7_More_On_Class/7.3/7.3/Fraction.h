//
//  Fraction.h
//  7.1
//
//  Created by trainer on 3/10/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denomiator;
-(Fraction *) add: (Fraction *)f;
//subtract argument from receiver
-(Fraction *) substract: (Fraction *)f ;
// multiply receiver by argument
-(Fraction *) multiply: (Fraction *)f ;
// divide receiver by argument
-(Fraction *) divide: (Fraction *)f ;
-(void)print;
@end
