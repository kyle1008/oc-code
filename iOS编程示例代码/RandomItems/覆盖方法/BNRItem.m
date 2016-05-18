//
//  BNRItem.m
//  RandomItems
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

//声明BNRItem类的实例变量
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

-(void)setItemName:(NSString *)str;
{
    _itemName = str;
}
-(NSString *)itemName;{
    return _itemName;
}

-(void)setSerialNumber:(NSString *)str;{
    _serialNumber = str;
}
-(NSString *)serialNumber;{
    return _serialNumber;
}

-(void)setValueInDollars:(int)val;{
    _valueInDollars = val;
}
-(int)valueDollars;{
    return _valueInDollars;
}

-(void)setDateCreated:(NSDate *)dat;{
    _dateCreated = dat;
}
-(NSDate *)dateCreated;{
    return _dateCreated;
}

//复写父类的方法description
-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@):Worth $%i, recorded on %@",self->_itemName, self->_serialNumber, self->_valueInDollars, self->_dateCreated];
    return descriptionString;
}
@end
