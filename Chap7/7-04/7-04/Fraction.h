//
//  Fraction.h
//  7-01
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int num, den;
-(void) print;
-(double) convertToNum;
//多参数设值方法
-(void) setTo: (int)n over: (int) d;

-(void) add: (Fraction *) f;

@end
