//
//  YZPushViewController.m
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//


#import "YZPushViewController.h"

#import "YZAwardViewController.h"

#import "YZScoreViewController.h"

@interface YZPushViewController ()


@end

@implementation YZPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpGroup0];
    
}


#pragma mark - 添加第二组
- (void)setUpGroup0
{
    YZArrowItem *award = [YZArrowItem itemWithImage:nil title:@"开奖推送"];
    award.destClass = [YZAwardViewController class];
    YZArrowItem *score = [YZArrowItem itemWithImage:nil title:@"比分直播推送"];
    score.destClass = [YZScoreViewController class];
    
    YZArrowItem *animation = [YZArrowItem itemWithImage:nil title:@"中奖动画"];

    YZArrowItem *warn = [YZArrowItem itemWithImage:nil title:@"购彩提醒"];
    
   
    YZGroupItem *group = [[YZGroupItem alloc] init];
    group.items = @[award,score,animation,warn];
    
    [self.groups addObject:group];
}

@end