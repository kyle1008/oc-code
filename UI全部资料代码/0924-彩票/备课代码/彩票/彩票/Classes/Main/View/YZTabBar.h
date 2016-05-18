//
//  YZTabBar.h
//  彩票
//
//  Created by yz on 15/6/25.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YZTabBar;
@protocol YZTabBarDelegate <NSObject>

@optional
- (void)tabBar:(YZTabBar *)tabBar didClickBtn:(NSInteger)index;

@end

@interface YZTabBar : UIView

@property (nonatomic, strong) NSArray *items;

@property (nonatomic, weak) id<YZTabBarDelegate> delegate;

@end
