//
//  YZSettingViewController.m
//  彩票
//
//  Created by yz on 15/6/25.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZSettingViewController.h"
#import "YZHelpViewController.h"

#import "YZSettingItem.h"
#import "YZGroupItem.h"

#import "YZSettingCell.h"

#import "YZArrowItem.h"
#import "YZSwitchItem.h"

#import "MBProgressHUD+XMG.h"

#import "YZBlurView.h"


#import "YZPushViewController.h"

@interface YZSettingViewController ()

@end

@implementation YZSettingViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpNavButton];
    
    // 添加第一组
    [self setUpGroup0];
    
    // 添加第二组
    [self setUpGroup1];
    
    // 添加第三组
    [self setUpGroup2];
       
}

#pragma mark - 添加第一组
- (void)setUpGroup0
{
    YZArrowItem *item = [YZArrowItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];

    item.destClass = [UIViewController class];
    
    YZGroupItem *group = [[YZGroupItem alloc] init];
    group.items = @[item];
    
    
    [self.groups addObject:group];
    
}

#pragma mark - 添加第二组
- (void)setUpGroup1
{
    YZArrowItem *morePush = [YZArrowItem itemWithImage:[UIImage imageNamed:@"MorePush"] title:@"推送和提醒"];
    morePush.destClass = [YZPushViewController class];
    YZSettingItem *homeshake = [YZSwitchItem itemWithImage:[UIImage imageNamed:@"more_homeshake"] title:@"使用摇一摇机选"];
    YZSettingItem *sound = [YZSwitchItem itemWithImage:[UIImage imageNamed:@"sound_Effect"] title:@"声音效果"];
    YZSettingItem *recommend = [YZSwitchItem itemWithImage:[UIImage imageNamed:@"More_LotteryRecommend"] title:@"购彩小助手"];
    YZGroupItem *group1 = [YZGroupItem groupWithItems:@[morePush,homeshake,sound,recommend]];

    
    [self.groups addObject:group1];
}

#pragma mark - 添加第三组
- (void)setUpGroup2
{
    YZSettingItem *item = [YZArrowItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"检查新版本"];
    
    item.optionBlock = ^(NSIndexPath *indexPath){
        
        
        YZBlurView *blurView = [[YZBlurView alloc] initWithFrame:self.view.frame];
        
        [[UIApplication sharedApplication].keyWindow addSubview:blurView];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [blurView removeFromSuperview];
        });
        
        [MBProgressHUD showSuccess:@"当前没有最新版本"];
        
    };
    YZArrowItem *share = [YZArrowItem itemWithImage:[UIImage imageNamed:@"MoreShare"] title:@"分享"];

    YZSettingItem *netsease = [YZArrowItem itemWithImage:[UIImage imageNamed:@"MoreNetease"] title:@"产品推荐"];
    YZArrowItem *about = [YZArrowItem itemWithImage:[UIImage imageNamed:@"MoreAbout"] title:@"关于"];

    YZGroupItem *group2 = [YZGroupItem groupWithItems:@[item,share,netsease,about]];
    [self.groups addObject:group2];
    
    
}

- (void)setUpNavButton
{
    self.title = @"设置";
    
    UIBarButtonItem *help = [[UIBarButtonItem alloc] initWithTitle:@"常见问题" style:UIBarButtonItemStylePlain target:self action:@selector(help)];
    
    self.navigationItem.rightBarButtonItem = help;
}

// 点击帮助
- (void)help
{
    
    YZHelpViewController *help = [[YZHelpViewController alloc] init];
    
    [self.navigationController pushViewController:help animated:YES];
}

@end