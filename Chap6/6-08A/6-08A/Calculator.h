//
//  Calculator.h
//  6-08A
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
-(void) setAccumulator: (double)value;
-(void) clear;

-(double) accumulator;

-(void) add: (double)value;
-(void) sub: (double)value;
-(void) mul: (double)value;
-(void) div: (double)value;

@end
