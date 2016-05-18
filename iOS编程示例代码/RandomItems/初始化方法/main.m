//
//  main.m
//  初始化方法
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        [items insertObject:@"zero" atIndex:0];
        //遍历数组
        for (NSString *item in items) {
            NSLog(@"%@",item);
        }
        
        //创建一个BNRItem对象并调用初始化方法
        BNRItem *item1 = [[BNRItem alloc] initWithItemName:@"Red sofa"
                                         valueInDollars:200
                                          serialNumber:@"A1b2CDff345"];
        NSLog(@"item1 = %@", item1);
        
        BNRItem *item2 = [[BNRItem alloc]initWithItemName:@"Blue sofa"];
        NSLog(@"item2 = %@", item2);
        
        BNRItem *item3 = [[BNRItem alloc] init];
        NSLog(@"item3 = %@", item3);
        
        items = nil;
    }
    return 0;
}
