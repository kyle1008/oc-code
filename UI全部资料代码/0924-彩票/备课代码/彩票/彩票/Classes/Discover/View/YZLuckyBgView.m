//
//  YZLuckyBgView.m
//  彩票
//
//  Created by yz on 15/6/27.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZLuckyBgView.h"

@implementation YZLuckyBgView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIImage *image = [UIImage imageNamed:@"luck_entry_background"];
    [image drawInRect:rect];
    
    
}

@end
