//
//  BNRItem.h
//  RandomItems
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

//BNRItem类的指定初始化方法
-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;

//只知道BNRItem对象名字时使用的初始化方法
-(instancetype)initWithItemName:(NSString *)name;

-(void)setItemName:(NSString *)str;


@end
