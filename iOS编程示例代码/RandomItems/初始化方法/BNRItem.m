//
//  BNRItem.m
//  RandomItems
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
{
    NSDate *_dateCreated;
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
}

//BNRItem类指定的初始化方法
-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber
{
    //调用父类的指定初始化方法
    self = [super init];
    
    //父类的指定初始化方法是否成功创建了父类对象
    if(self){
        //为实例变量设定初始化
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
    
        //设置_dateCreated的值为当前系统时间
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

//第二个初始化方法
-(instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

//第三个初始化方法init继承自父类NSObject，复写了父类的init方法

-(instancetype)init{
    return [self initWithItemName:@"Item"];
}

//BNRItem类的init方法调用第二个初始化方法initWithItemName:传入名称，第二个方法又去调用第一个初始化方法initWithItemName:valueInDollars:serialNumber:传入价值和序列号，第三个方法又去调用父类NSObject的初始化方法init

@end
