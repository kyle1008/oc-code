//
//  AppDelegate.m
//  UIView详解之三：视图的形变
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
-(void)rotate:(id)sender;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    //代码创建一个button并设置属性
//    UIButton *btnRotate = [UIButton buttonWithType:UIButtonTypeRoundedRect]; //绘制形状
//    // 确定宽、高、X、Y坐标
//    CGRect frame;
//    frame.size.width = 100;
//    frame.size.height = 30;
//    frame.origin.x = 320 / 2 + 50;
//    frame.origin.y = 480 / 2 + 30;
//    [btnRotate setFrame:frame];
//    // 设置Tag(整型)
//    btnRotate.tag = 10;
//    // 设置标题
//    [btnRotate setTitle:@"旋转" forState:UIControlStateNormal];
//    // 设置未按下和按下的图片切换
////    [btn setBackgroundImage:[UIImage imageNamed:@"bus.png"] forState:UIControlStateNormal];
////    [btn setBackgroundImage:[UIImage imageNamed:@"plane.png"] forState:UIControlStateHighlighted];
//    
//    // 设置事件
//    [btnRotate addTarget:self action:@selector(btnPressed:) forControlEvents:UIControlEventTouchUpInside];
//    
//    // 设置背景色和透明度
//    [btnRotate setBackgroundColor:[UIColor blackColor]];
//    [btnRotate setAlpha:0.8];
//    // 或设置背景色和透明度
//    btnRotate.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8];
//    [self.inputViewController.view addSubview:btnRotate];
//    //按钮响应事件
////    -(void)rotate:(id)sender
////    {
////        UIButton *btnRotate = (UIButton *)sender;
////        if (btn4.tag == 10)
////        {
////            // TODO:
////        }
////    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
