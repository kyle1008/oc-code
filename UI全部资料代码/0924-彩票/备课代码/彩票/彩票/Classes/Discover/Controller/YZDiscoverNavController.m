//
//  YZDiscoverNavController.m
//  彩票
//
//  Created by yz on 15/6/27.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZDiscoverNavController.h"

@interface YZDiscoverNavController ()

@end

@implementation YZDiscoverNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.viewControllers.count) {
        
        
        viewController.hidesBottomBarWhenPushed = YES;
        
        [viewController.view layoutIfNeeded];
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"NavBack"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    }
    
    [super pushViewController:viewController animated:animated];
    
}

@end
