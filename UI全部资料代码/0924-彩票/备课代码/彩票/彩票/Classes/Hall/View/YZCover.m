//
//  YZCover.m
//  彩票
//
//  Created by yz on 15/6/26.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZCover.h"

@implementation YZCover

+ (void)show
{
    YZCover *cover = [[YZCover alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.3;
    
    [[UIApplication sharedApplication].keyWindow addSubview:cover];
}

+ (void)dismiss
{
    
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    for (UIView *cover in keyWindow.subviews) {
        if ([cover isKindOfClass:self]) {
            [cover removeFromSuperview];
        }
    }
    
}

@end
