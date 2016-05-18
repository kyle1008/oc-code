//
//  YZBaseSettingViewController.m
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZBaseSettingViewController.h"


@interface YZBaseSettingViewController ()

@end

@implementation YZBaseSettingViewController
- (NSMutableArray *)groups
{
    if (_groups == nil) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    YZGroupItem *group = self.groups[section];
    return group.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YZSettingCell *cell = [YZSettingCell cellWithTableView:tableView style:UITableViewCellStyleValue1];
    
    YZGroupItem *group = self.groups[indexPath.section];
    
    YZSettingItem *item = group.items[indexPath.row];
    
    cell.item = item;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    YZGroupItem *group = self.groups[section];
    
    return group.header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    YZGroupItem *group = self.groups[section];
    
    return group.footer;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    YZGroupItem *group = self.groups[indexPath.section];
    
    YZArrowItem *item = group.items[indexPath.row];
    
    if (item.optionBlock) {
        item.optionBlock(indexPath);
        return;
    }
    
    if ([item isKindOfClass:[YZArrowItem class]]) {
        
        if (item.destClass) {
            
            UIViewController *vc = [[item.destClass alloc] init];
            
            [self.navigationController pushViewController:vc animated:YES];
            
        }
    }
    
}
@end
