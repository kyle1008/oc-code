//
//  YZNewFeatureCell.m
//  彩票
//
//  Created by yz on 15/6/28.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZNewFeatureCell.h"


#import "UIView+Frame.h"

#import "YZTabBarController.h"

@interface YZNewFeatureCell ()

@property (nonatomic, weak) UIImageView *imageView;

@property (nonatomic, weak) UIButton *startButton;

@end

@implementation YZNewFeatureCell

- (UIButton *)startButton
{
    if (_startButton == nil) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [btn setBackgroundImage:[UIImage imageNamed:@"guideStart"] forState:UIControlStateNormal];
        
        [btn sizeToFit];
        
        btn.center = CGPointMake(self.width * 0.5, self.height * 0.9);
        
        [btn addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
        
        _startButton = btn;
        
        [self addSubview:btn];
    }
    return _startButton;
}


- (UIImageView *)imageView
{
    if (_imageView == nil) {
        UIImageView *imageV = [[UIImageView alloc] initWithFrame:self.bounds];
        
        [self.contentView addSubview:imageV];
        
        _imageView = imageV;
    }
    return _imageView;
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    
    self.imageView.image = image;
}

- (void)setIndexPath:(NSIndexPath *)indexPath count:(int)count
{
    if (indexPath.row == count - 1) {
         self.startButton.hidden = NO;
        
    }else{
         self.startButton.hidden = YES;
    }
}

- (void)start
{
    YZTabBarController *tabBar = [[YZTabBarController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = tabBar;
}


@end
