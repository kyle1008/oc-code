//
//  YZMenuItem.m
//  彩票
//
//  Created by yz on 15/6/26.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZMenuItem.h"

@implementation YZMenuItem

+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image
{
    YZMenuItem *item = [[self alloc] init];
    
    item.title = title;
    
    item.image = image;
    
    return item;
    
}

@end
