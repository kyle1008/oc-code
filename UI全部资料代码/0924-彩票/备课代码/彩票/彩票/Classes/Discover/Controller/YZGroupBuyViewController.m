//
//  YZGroupBuyViewController.m
//  彩票
//
//  Created by yz on 15/6/27.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZGroupBuyViewController.h"

#import "YZTitleView.h"

@interface YZGroupBuyViewController ()

@property (nonatomic, weak) UIButton *titleView;

@end

@implementation YZGroupBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *titleView = [YZTitleView buttonWithType:UIButtonTypeCustom];
    
    [titleView setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
    
    [titleView setTitle:@"全部彩种" forState:UIControlStateNormal];
    
    
    _titleView = titleView;
    
//    [titleView sizeToFit];
    titleView.frame = CGRectMake(0, 0, 100, 30);
    
    self.navigationItem.titleView = titleView;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"助手" style:UIBarButtonItemStyleDone target:self action:@selector(help)];
    
}

- (void)help
{
    
}

@end
