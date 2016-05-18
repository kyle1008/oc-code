//
//  YZSettingItem.h
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import <Foundation/Foundation.h>


#import <UIKit/UIKit.h>

@interface YZSettingItem : NSObject

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSString *subTitle;


@property (nonatomic, strong) void(^optionBlock)(NSIndexPath *indexPath);

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title;


@end
