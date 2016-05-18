//
//  YZArenaBgView.m
//  彩票
//
//  Created by yz on 15/6/26.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZArenaBgView.h"

@implementation YZArenaBgView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIImage *bg = [UIImage imageNamed:@"NLArenaBackground"];
    
    [bg drawInRect:rect];
    
}

@end
