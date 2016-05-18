//
//  AppDelegate.m
//  Quiz
//
//  Created by Kyle on 16/5/12.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    UIViewController *quizVC = [[UIViewController alloc] init];
    self.window.rootViewController= quizVC;
    
    
    self.window.backgroundColor = [UIColor greenColor];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
