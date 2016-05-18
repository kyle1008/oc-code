//
//  YZScoreViewController.m
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZScoreViewController.h"

@interface YZScoreViewController ()

@end

@implementation YZScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 第一组
    [self addGroup0];
    
    // 第二组
    [self addGroup1];
    
    // 第三组
    [self addGroup2];
    
    // 第三组
    [self addGroup2];
    
    // 第三组
    [self addGroup2];
    
    // 第三组
    [self addGroup2];
    
    // 第三组
    [self addGroup2];

}


- (void)addGroup0
{
    YZSettingItem *item = [YZSwitchItem itemWithImage:nil title:@"推送我关注的比赛"];
    
    
    YZGroupItem *group = [YZGroupItem groupWithItems:@[item]];
    group.footer = @"开启后，当我投注或关注的比赛开始、进球和结束时，会自动发送推送消息提醒我";
    [self.groups addObject:group];
    
}

- (void)addGroup1
{
    YZSettingItem *item = [YZSettingItem itemWithImage:nil title:@"起始时间"];
    item.subTitle = @"00:00";
    
    
    
    YZGroupItem *group = [YZGroupItem groupWithItems:@[item]];
    group.header = @"只在以下时间段接收比分直播推送";
    [self.groups addObject:group];
    
}

- (void)addGroup2
{
    YZSettingItem *entItem = [YZSettingItem itemWithImage:nil title:@"结束时间"];
    entItem.subTitle = @"23:59";
    
    __weak typeof(self) weakSelf = self;
    
    entItem.optionBlock = ^(NSIndexPath *indexPath){
        
        
       UITableViewCell *cell = [weakSelf.tableView cellForRowAtIndexPath:indexPath];
        
        UITextField *textField = [[UITextField alloc] init];
        
        [textField becomeFirstResponder];
        
        [cell addSubview:textField];
        
    };
    
    YZGroupItem *group = [YZGroupItem groupWithItems:@[entItem]];
    [self.groups addObject:group];
    
}

- (void)dealloc
{
    NSLog(@"%s",__func__);
}

@end