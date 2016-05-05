//
//  Fraction.h
//  7-01
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(void) print;
-(double) convertToNum;//以小数形式显示分数

@property int num, den;

@end
