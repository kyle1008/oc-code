//
//  YZLuckyViewController.m
//  彩票
//
//  Created by yz on 15/6/27.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZLuckyViewController.h"

@interface YZLuckyViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btns;
@property (weak, nonatomic) IBOutlet UIImageView *lightView;

@end

@implementation YZLuckyViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"lucky_entry_light0"];
    UIImage *image1 = [UIImage imageNamed:@"lucky_entry_light1"];
    _lightView.animationImages = @[image,image1];
    _lightView.animationDuration = 0.5;
    [_lightView startAnimating];
    
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    
    
}

// 如果有storyboard，需要在这里布局子控件位置，因为storyboard会先调用updateViewConstraints布局storyboard描述的位置，等它描述完，我们在布局下。
// 如果使用storyboard,在viewDidLoad使用frame布局是不准确的。
- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    
    CGFloat x = 0;
    CGFloat w = 192;
    CGFloat h = 140;
    int cols = 2;
    NSUInteger count = self.btns.count;
    NSUInteger rows = (count - 1) / cols + 1;
    CGFloat margin = (screenH - rows * 192) / (rows + 1);
    int col = 0;
    int row = 0;
    int i = 0;
    CGFloat y = 0;
    for (UIButton *btn in _btns) {
        col = i % cols;
        row = i / cols;
        y = (margin + h) * row + margin;
        if (col == 0) {
            x = 0;
        }else{
            x = screenW - w;
        }
        btn.frame = CGRectMake(x, y, w, h);
        
        i++;
    }
    
}




@end
