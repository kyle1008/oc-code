//
//  YZNavigationController.m
//  彩票
//
//  Created by yz on 15/6/25.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZNavigationController.h"

#import "YZPopAnimation.h"

#import <objc/runtime.h>

@interface YZNavigationController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@property (nonatomic, strong) UIPercentDrivenInteractiveTransition *popInteractive;

@property (nonatomic, strong) id target;

@end

@implementation YZNavigationController

+ (void)initialize
{
    [[UINavigationBar appearanceWhenContainedIn:self, nil] setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    NSMutableDictionary *testAttr = [NSMutableDictionary dictionary];
    testAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    testAttr[NSFontAttributeName] = [UIFont systemFontOfSize:18];
    
    [[UINavigationBar appearance] setTitleTextAttributes:testAttr];
    
    testAttr = [NSMutableDictionary dictionary];
    testAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:testAttr forState:UIControlStateNormal];
    
//    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -100) forBarMetrics:UIBarMetricsDefault];
//    
//    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
}

/*
 <UIScreenEdgePanGestureRecognizer: 0x7fe8ba617370; state = Possible; delaysTouchesBegan = YES; view = <UILayoutContainerView 0x7fe8ba46c610>; target= <(action=handleNavigationTransition:, target=<_UINavigationInteractiveTransition 0x7fe8ba44acb0>)>>

 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScreenEdgePanGestureRecognizer *gesture = (UIScreenEdgePanGestureRecognizer *)self.interactivePopGestureRecognizer;
    
    gesture.enabled  = NO;
    
    
    NSMutableArray *targets = [gesture valueForKeyPath:@"_targets"];
//
    id gestureTarget = [targets firstObject];
    
    id target = [gestureTarget valueForKeyPath:@"_target"];
    

    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
    
    [gesture.view addGestureRecognizer:pan];

}




- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.viewControllers.count) {
        
        viewController.hidesBottomBarWhenPushed = YES;
        
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"NavBack"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    }
    
    [super pushViewController:viewController animated:animated];
    
    
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}

//- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
//    /**
//     *  这里有两个条件不允许手势执行，1、当前控制器为根控制器；2、如果这个push、pop动画正在执行（私有属性）
//     */
//    return self.viewControllers.count != 1 && ![[self valueForKey:@"_isTransitioning"] boolValue];
//}


@end
