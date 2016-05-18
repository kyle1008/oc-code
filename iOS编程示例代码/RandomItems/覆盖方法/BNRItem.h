//
//  BNRItem.h
//  RandomItems
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject


//声明设值取值（存取）方法
-(void)setItemName:(NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int)val;
-(int)valueDollars;

-(void)setDateCreated:(NSDate *)dat;
-(NSDate *)dateCreated;
@end
