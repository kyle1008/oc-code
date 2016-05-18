//
//  YZTitleView.m
//  彩票
//
//  Created by yz on 15/6/27.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZTitleView.h"

#import "UIView+Frame.h"

@implementation YZTitleView


- (void)awakeFromNib
{
    self.backgroundColor = [UIColor blackColor];
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    
    NSLog(@"%f--%f",self.titleLabel.x,self.imageView.x);
    if (self.titleLabel.x > self.imageView.x) {
        self.titleLabel.x = self.imageView.x;
        self.imageView.x = CGRectGetMaxX(self.titleLabel.frame);
    }
    
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    [self sizeToFit];
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state
{
    [super setImage:image forState:state];
    [self sizeToFit];
}

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
}
@end
