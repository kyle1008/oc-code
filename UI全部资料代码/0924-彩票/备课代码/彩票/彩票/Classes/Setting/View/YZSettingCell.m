//
//  YZSettingCell.m
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//


#import "YZArrowItem.h"
#import "YZSwitchItem.h"


#import "YZSettingCell.h"

#define YZColor(r,g,b) ([UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1])


@interface YZSettingCell ()

@property (nonatomic, weak) UIImageView *arrowView;
@property (nonatomic, weak) UISwitch *switchView;


@end

@implementation YZSettingCell

- (UIImageView *)arrowView
{
    if (_arrowView == nil) {
        UIImageView *img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
        [self.contentView addSubview:img];
        _arrowView = img;
    }
    return _arrowView;
}

- (UISwitch *)switchView
{
    if (_switchView == nil) {
        UISwitch *swith = [[UISwitch alloc] init];
        [self.contentView addSubview:swith];
        _switchView = swith;
    }
    return _switchView;
}


+ (instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style
{
    static NSString *ID = @"cell";
    
    YZSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[YZSettingCell alloc] initWithStyle:style reuseIdentifier:ID];
        
    }
    
    
    [cell setUp];
    
    return cell;
}

- (void)setUp
{
    self.backgroundColor = [UIColor clearColor];
    
    // 背景
    self.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GroupCell"]];
    self.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GroupCellSelected"]];
}

- (void)setItem:(YZSettingItem *)item
{
    _item = item;
    
    [self setUpData];
    
    [self setUpAccessoryView];
    
    
}

- (void)setUpData
{
    if ([_item isKindOfClass:[YZSettingItem class]]) {
        
        self.textLabel.text = _item.title;
        self.imageView.image = _item.image;
        self.detailTextLabel.text = _item.subTitle;
    }else{
        self.textLabel.text = _item.title;
    }
}


- (void)setUpAccessoryView
{
    if ([_item isKindOfClass:[YZArrowItem class]]) {
        self.accessoryView = self.arrowView;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
        
    }else if ([_item isKindOfClass:[YZSwitchItem class]]){
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }else{
        self.accessoryView = nil;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
    
}

@end
