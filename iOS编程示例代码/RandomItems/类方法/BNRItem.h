//
//  BNRItem.h
//  RandomItems
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject


//类方法
+(instancetype)randomItem;


//BNRItem类的指定初始化方法
-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber;

@end
