//
//  YZTabBarController.m
//  彩票
//
//  Created by yz on 15/6/25.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZTabBarController.h"
#import "YZHallViewController.h"
#import "YZArenaViewController.h"
#import "YZDiscoverViewController.h"
#import "YZHistoryViewController.h"
#import "YZMyLotteryViewController.h"

#import "YZArenaNavigationController.h"


#import "YZNavigationController.h"
#import "YZDiscoverNavController.h"
#import "YZTabBar.h"

@interface YZTabBarController ()<YZTabBarDelegate>

@property (nonatomic, strong) NSMutableArray *items;

@end

@implementation YZTabBarController

- (NSMutableArray *)items
{
    if (_items == nil) {
        _items = [NSMutableArray array];
    }
    return _items;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    // 添加所有控制器
    [self setUpAllChildViewController];
    
    // 创建tabBar
    [self setUpTabBar];
    
}

// 创建tabBar
- (void)setUpTabBar
{
    YZTabBar *tabBar = [[YZTabBar alloc] initWithFrame:self.tabBar.bounds];
    
    tabBar.backgroundColor = [UIColor redColor];
    
    tabBar.delegate = self;
    
    tabBar.items = self.items;
    
    [self.tabBar addSubview:tabBar];
    
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    for (UIView *childView in self.tabBar.subviews) {
        
        if (![childView isKindOfClass:[YZTabBar class]]) {
            [childView removeFromSuperview];
        }
        

    }
}

// 添加子控件
- (void)setUpAllChildViewController
{
    
    // 购彩大厅
    UIViewController *hall = [[YZHallViewController alloc] init];
    [self setUpOneChildViewController:hall image:[UIImage imageNamed:@"TabBar_LotteryHall_new"] selImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"] title:@"购彩大厅"];

    // 竞技场
    UIViewController *arena = [[YZArenaViewController alloc] init];
    [self setUpOneChildViewController:arena image:[UIImage imageNamed:@"TabBar_Arena_new"] selImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:@"竞技场"];
    
    // 发现
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"YZDiscoverViewController" bundle:nil];
    
    UIViewController *discover = [storyboard instantiateInitialViewController];
    [self setUpOneChildViewController:discover image:[UIImage imageNamed:@"TabBar_Discovery_new"] selImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"] title:@"发现"];
    
    
    // 开奖信息
    UIViewController *history = [[YZHistoryViewController alloc] init];
    [self setUpOneChildViewController:history image:[UIImage imageNamed:@"TabBar_History_new"] selImage:[UIImage imageNamed:@"TabBar_History_selected_new"] title:@"开奖信息"];

    
    // 我的彩票
    storyboard = [UIStoryboard storyboardWithName:@"YZMyLotteryViewController" bundle:nil];
    
    UIViewController *mylottery = [storyboard instantiateInitialViewController];
    [self setUpOneChildViewController:mylottery image:[UIImage imageNamed:@"TabBar_MyLottery_new"] selImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"] title:@"我的彩票"];
}

// 添加一个控制器
- (void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title;
{
    
    vc.navigationItem.title = title;
    vc.tabBarItem.image = image;

    vc.tabBarItem.selectedImage = selImage;
    
    [self.items addObject:vc.tabBarItem];
    
    UINavigationController *nav = [[YZNavigationController alloc] initWithRootViewController:vc];
    if ([vc isKindOfClass:[YZArenaViewController class]]) {
        nav = [[YZArenaNavigationController alloc] initWithRootViewController:vc];
               
    }
    
    [self addChildViewController:nav];
    
}




- (void)tabBar:(YZTabBar *)tabBar didClickBtn:(NSInteger)index
{
    self.selectedIndex = index;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
