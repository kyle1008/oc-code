//
//  YZArenaViewController.m
//  彩票
//
//  Created by yz on 15/6/25.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZArenaViewController.h"

#import "YZArenaBgView.h"

#import "UIView+Frame.h"

#define YZColor(r,g,b) ([UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1])


@interface YZArenaViewController ()

@end

@implementation YZArenaViewController
- (void)loadView
{
    self.view = [[YZArenaBgView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 设置titleView
    [self setUpTitleView];
    
}


- (void)setUpTitleView
{
    
    UISegmentedControl *segument = [[UISegmentedControl alloc] initWithItems:@[@"足球",@"篮球"]];
    
    self.navigationItem.titleView = segument;
    
    segument.selectedSegmentIndex = 0;
    
    [segument setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segument setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    
    
    segument.tintColor = YZColor(18, 142, 143);
    
    
    
//    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:@[@"足球",@"篮球"]];
//    segment.width = 150;
//    segment.selectedSegmentIndex = 0;
//    
//    [segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//    
//    [segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
//    
//    segment.tintColor = YZColor(18, 143, 142);
//    
    NSMutableDictionary *normaldictM = [NSMutableDictionary dictionary];
    normaldictM[NSForegroundColorAttributeName] = YZColor(18, 143, 142);
    [segument setTitleTextAttributes:normaldictM forState:UIControlStateNormal];
    
    NSMutableDictionary *seldictM = [NSMutableDictionary dictionary];
    seldictM[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [segument setTitleTextAttributes:seldictM forState:UIControlStateSelected];
//
//    
//    self.navigationItem.titleView = segment;
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
