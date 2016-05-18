//
//  YZTabBar.m
//  彩票
//
//  Created by yz on 15/6/25.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZTabBar.h"

#import "YZTabBarButton.h"

@interface YZTabBar ()

@property (nonatomic, weak) UIButton *selButton;

@end

@implementation YZTabBar


// 初始化控制器
- (void)setUp
{
//    for (int i = 0; i < 5; i++) {
//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        
//        btn setImage:[UIImage imageNamed:<#(NSString *)#>] forState:<#(UIControlState)#>
//        
//        [self addSubview:btn];
//    }
    
}


- (void)setItems:(NSArray *)items
{
    _items = items;
    
    for (UITabBarItem *item in items) {
        
        YZTabBarButton *btn = [YZTabBarButton buttonWithType:UIButtonTypeCustom];
        
        btn.adjustsImageWhenHighlighted = NO;
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];

        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = self.subviews.count;
        [self addSubview:btn];
        
        if (self.subviews.count == 1) {
            [self btnClick:btn];
        }
        
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    NSInteger count = self.subviews.count;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = self.bounds.size.width / count;
    CGFloat h = self.bounds.size.height;
    for (NSInteger i = 0; i < count; i++) {
        
        UIButton *btn = self.subviews[i];
        x = i * w;
        
        btn.frame = CGRectMake(x, y, w, h);
    }
    
}

- (void)btnClick:(UIButton *)button
{
    _selButton.selected = NO;
    button.selected = YES;
    _selButton = button;
    
    if ([_delegate respondsToSelector:@selector(tabBar:didClickBtn:)]) {
        [_delegate tabBar:self didClickBtn:button.tag];
    }
}
@end
