//
//  YZItemMenu.m
//  彩票
//
//  Created by yz on 15/6/26.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZItemMenu.h"

#import "YZMenuItem.h"


#define YZItemWH [UIScreen mainScreen].bounds.size.width / cols

#define cols 3

static int _itemCount;
@implementation YZItemMenu

- (void)hide
{
    
    [UIView animateWithDuration:0.25 animations:^{
        
        self.transform = CGAffineTransformMakeTranslation(0, -self.bounds.size.height);
    } completion:^(BOOL finished) {
        
        [self removeFromSuperview];
        
    }];
    
}

+ (instancetype)showInView:(UIView *)superView originY:(CGFloat)originY items:(NSArray *)items
{
    
    
    NSUInteger count = items.count;
    
    _itemCount = count;
    
    NSUInteger rows = ((count - 1) / cols) + 1;
    
    CGFloat w = cols * YZItemWH;
    
    CGFloat h = rows * YZItemWH;
    
    CGFloat y = originY;
    
    
    YZItemMenu *menu = [[YZItemMenu alloc] initWithFrame:CGRectMake(0, y, w, h)];
    
    menu.backgroundColor = [UIColor blackColor];
    
    [menu setUpAllButtonWithItems:items];
    
    UIView *blackView = [[UIView alloc] initWithFrame:menu.frame];
    
    blackView.backgroundColor = [UIColor blackColor];
    
    [superView addSubview:blackView];
    
    menu.transform = CGAffineTransformMakeTranslation(0, -h);
    
    
    [UIView animateWithDuration:0.25 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        
        menu.transform = CGAffineTransformIdentity;
        
    } completion:^(BOOL finished) {
        
        [blackView removeFromSuperview];
        
    }];
    
    // 添加分割线
    [menu setUpDivideView];
    
    [superView addSubview:menu];
    
    return  menu;
    
}

- (void)setUpDivideView
{
     NSUInteger rows = ((_itemCount - 1) / cols) + 1;
    
    // 竖
    for (int i = 0 ; i < cols - 1; i++) {
        
        UIButton *btn = self.subviews[i + 1];
        
        UIView *divideV = [[UIView alloc] initWithFrame:CGRectMake(btn.frame.origin.x, 0, 1, YZItemWH * rows)];
        
        divideV.backgroundColor = [UIColor whiteColor];
        
        [self addSubview:divideV];
        
    }
    
    // 横
    
    
    if (rows > 1) {
        for (int i = 1; i < rows; i++) {
            
            UIView *divideV = [[UIView alloc] initWithFrame:CGRectMake(0, i * YZItemWH, [UIScreen mainScreen].bounds.size.width, 1)];
            
            divideV.backgroundColor = [UIColor whiteColor];
            
            [self addSubview:divideV];
            
        }
        
    }
    
    
}

// 添加所有按钮
- (void)setUpAllButtonWithItems:(NSArray *)items
{
    int col = 0;
    int row = 0;
    
    CGFloat x = 0;
    CGFloat y = 0;
    
    int i = 0;
    for (YZMenuItem *item in items) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        
        
        [btn setImage:item.image forState:UIControlStateNormal];
        
        [btn setTitle:item.title forState:UIControlStateNormal];
        
        
        col = i % cols;
        row = i / cols;
        
        // 设置按钮尺寸
        x = col * YZItemWH;
        
        y = row * YZItemWH;
        
        btn.frame = CGRectMake(x, y, YZItemWH, YZItemWH);

        
        [self addSubview:btn];
        
        i++;
        
    }

}

//+ (void)showInItems:(NSArray *)items
//{
//    YZItemMenu *menu = [[YZItemMenu alloc] initWithFrame:rect];
//    
//    
//    [[UIApplication sharedApplication].keyWindow addSubview:menu];
//}

//+ (void)showInRect:(CGRect)rect
//{
//    YZItemMenu *menu = [[YZItemMenu alloc] initWithFrame:rect];
//    
//    
//    
//    [[UIApplication sharedApplication].keyWindow addSubview:menu];
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
