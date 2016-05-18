//
//  Caculator.h
//  4-6
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(void) setAccumulator: (double)n;  //声明累加器设值方法
-(double) accumulator;              //声明累加器取值方法
-(void)clear;                       //声明清零方法

//算术方法
-(void) add:(double)value;
-(void) subtract:(double)value;
-(void) multiply:(double)value;
-(void) divide:(double)value;

@end
