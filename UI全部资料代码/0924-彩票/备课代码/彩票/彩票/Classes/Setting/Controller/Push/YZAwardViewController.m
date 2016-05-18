//
//  YZAwardViewController.m
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZAwardViewController.h"



@interface YZAwardViewController ()

@end

@implementation YZAwardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self addGroup0];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)addGroup0
{
    
    YZSwitchItem *item = [YZSwitchItem itemWithImage:nil title:@"双色球"];
    item.subTitle = @"每周二、四、日开奖";
    YZSwitchItem *item1 = [YZSwitchItem itemWithImage:nil title:@"大乐透"];
    item1.subTitle = @"每周一、三、六开奖";
    YZSwitchItem *item2 = [YZSwitchItem itemWithImage:nil title:@"3D"];
    item2.subTitle = @"每天开奖、包括试机号提醒";
    YZSwitchItem *item3 = [YZSwitchItem itemWithImage:nil title:@"七乐彩"];
    item3.subTitle = @"每周一、三、五开奖";
    YZSwitchItem *item4 = [YZSwitchItem itemWithImage:nil title:@"七星彩"];
    item4.subTitle = @"每周二、五、日开奖";
    YZSwitchItem *item5 = [YZSwitchItem itemWithImage:nil title:@"排列3"];
    item5.subTitle = @"每天开奖";
    YZSwitchItem *item6 = [YZSwitchItem itemWithImage:nil title:@"排列5"];
    item6.subTitle = @"每天开奖";
    
    YZGroupItem *group = [[YZGroupItem alloc] init];
    group.items = @[item,item1,item2,item3,item4,item5,item6];
    
    
    [self.groups addObject:group];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YZSettingCell *cell = [YZSettingCell cellWithTableView:tableView style:UITableViewCellStyleSubtitle];
    
    YZGroupItem *group = self.groups[indexPath.section];
    
    YZSettingItem *item = group.items[indexPath.row];
    
    cell.item = item;
    
    return cell;
}

@end
