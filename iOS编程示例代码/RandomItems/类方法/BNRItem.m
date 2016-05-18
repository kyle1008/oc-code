
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

-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
{
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

+(instancetype)randomItem;{
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",[randomAdjectiveList objectAtIndex:adjectiveIndex],[randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialumber = [NSString stringWithFormat:@"%c%c%c%c%c", '0' + arc4random() % 10, 'A' + arc4random() % 26, '0' + arc4random() % 10,'A' + arc4random() % 26,'0' + arc4random() % 10];

    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialumber];
    
    return newItem;
             
}

@end
