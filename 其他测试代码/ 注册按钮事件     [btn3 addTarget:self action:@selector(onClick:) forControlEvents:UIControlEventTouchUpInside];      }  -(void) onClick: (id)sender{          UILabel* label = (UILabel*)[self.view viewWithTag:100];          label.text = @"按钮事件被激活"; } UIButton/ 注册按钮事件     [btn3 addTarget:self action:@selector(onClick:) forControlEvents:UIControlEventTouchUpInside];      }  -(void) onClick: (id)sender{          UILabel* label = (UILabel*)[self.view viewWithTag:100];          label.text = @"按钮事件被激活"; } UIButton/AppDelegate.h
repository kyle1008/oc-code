//
//  AppDelegate.h
//   注册按钮事件     [btn3 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];      }  -(void) onClick: (id)sender{          UILabel* label = (UILabel*)[self.view viewWithTag:100];          label.text = @"按钮事件被激活"; } UIButton
//
//  Created by Kyle on 16/5/11.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

