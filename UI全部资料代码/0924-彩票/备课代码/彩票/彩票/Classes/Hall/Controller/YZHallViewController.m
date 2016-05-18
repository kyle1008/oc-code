//
//  YZHallViewController.m
//  彩票
//
//  Created by yz on 15/6/25.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZHallViewController.h"

#import "UIBarButtonItem+Create.h"

#import "UIView+Frame.h"

#import "YZItemMenu.h"

#import "YZCover.h"

#import "YZMenuItem.h"

#define HMKeyWindow [UIApplication sharedApplication].keyWindow

@interface YZHallViewController ()

@property (nonatomic, weak) YZItemMenu *menu;

@property (nonatomic, assign) BOOL isPopMenu;

@property (nonatomic, weak) UIImageView *popView;
@end

@implementation YZHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
   self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImageName:@"CS50_activity_image" targer:self action:@selector(activity)];
    
    
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Development"] style:UIBarButtonItemStyleDone target:self action:@selector(itemClick)];
    
    
}
- (YZItemMenu *)menu
{
    if (_menu == nil) {
        YZMenuItem *item = [YZMenuItem itemWithTitle:nil image:[UIImage imageNamed:@"Development"]];
        
        YZMenuItem *item1 = [YZMenuItem itemWithTitle:nil image:[UIImage imageNamed:@"Development"]];
        
        YZMenuItem *item2 = [YZMenuItem itemWithTitle:nil image:[UIImage imageNamed:@"Development"]];
        
        YZMenuItem *item3 = [YZMenuItem itemWithTitle:nil image:[UIImage imageNamed:@"Development"]];
        
        YZMenuItem *item4 = [YZMenuItem itemWithTitle:nil image:[UIImage imageNamed:@"Development"]];
        
        YZMenuItem *item5 = [YZMenuItem itemWithTitle:nil image:[UIImage imageNamed:@"Development"]];
        
        // 显示item菜单
        YZItemMenu *menu = [YZItemMenu showInView:self.view originY:0 items:@[item,item1,item2,item3,item4,item5]];
        
        _menu = menu;
    }
    
    return _menu;
}
- (void)itemClick
{
    
    if (_isPopMenu) {
        [self.menu hide];
    }else{
        [self menu];
    }
    
    _isPopMenu = !_isPopMenu;
    
}

- (void)activity
{
    // 显示遮盖
    [YZCover show];
    
    // 添加popView
    [self setUpPopView];
}

- (void)setUpPopView
{
    UIImageView *popView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"xiaopingguo"]];
    popView.userInteractionEnabled = YES;
    
    popView.center = CGPointMake(HMKeyWindow.width * 0.5, HMKeyWindow.height * 0.5);;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:@"alphaClose"] forState:UIControlStateNormal];
    [button sizeToFit];
    [button addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    button.x = popView.width - button.width;
    [popView addSubview:button];
    
    _popView = popView;
    
    [HMKeyWindow addSubview:popView];
    
}

- (void)close
{
    [UIView animateWithDuration:1 animations:^{
        
        _popView.center = CGPointMake(30, 44);
        
        _popView.bounds = CGRectZero;
        
        NSValue *value = [NSValue valueWithCGRect:CGRectZero];
        [_popView.subviews makeObjectsPerformSelector:@selector(setBounds:) withObject:value];
        
    }completion:^(BOOL finished) {
        
        [YZCover dismiss];
        
    }];
}

@end
