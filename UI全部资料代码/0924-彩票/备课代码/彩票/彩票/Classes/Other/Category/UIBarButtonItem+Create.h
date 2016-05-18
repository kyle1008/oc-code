//
//  UIBarButtonItem+Create.h
//  彩票
//
//  Created by yz on 14/11/7.
//  Copyright (c) 2014年 iThinker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Create)
+ (UIBarButtonItem *)barButtonItemWithImageName:(NSString *)imageName targer:(id)targer action:(SEL)action;
@end
