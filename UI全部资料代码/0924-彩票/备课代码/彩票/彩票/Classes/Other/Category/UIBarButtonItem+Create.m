//
//  UIBarButtonItem+Create.m
//  彩票
//
//  Created by yz on 14/11/7.
//  Copyright (c) 2014年 iThinker. All rights reserved.
//

#import "UIBarButtonItem+Create.h"

@implementation UIBarButtonItem (Create)

+ (UIBarButtonItem *)barButtonItemWithImageName:(NSString *)imageName targer:(id)targer action:(SEL)action
{
 
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn sizeToFit];
    btn.adjustsImageWhenHighlighted = NO;
    [btn addTarget:targer action:action forControlEvents:UIControlEventTouchDown];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
    
}

@end
