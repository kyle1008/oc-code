//
//  YZGroupItem.m
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZGroupItem.h"

@implementation YZGroupItem

+ (instancetype)groupWithItems:(NSArray *)items{
    YZGroupItem *item = [[YZGroupItem alloc] init];
    
    item.items = items;
    
    return item;
}

@end
