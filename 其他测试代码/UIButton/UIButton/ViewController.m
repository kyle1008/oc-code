//
//  ViewController.m
//  UIButton
//
//  Created by Kyle on 16/5/11.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 300, 50)];
    label.text = @"请单击按钮";
    // 设置Label的标签，以便后面使用标签获取该Label
    [label setTag:100];
    [self.view addSubview:label];
    
    /**
     //UIButton的类型
     UIButtonTypeCustom 自定义风格
     UIButtonTypeSystem 标准的类型
     
     UIButtonTypeDetailDisclosure 蓝色小箭头按钮，主要做详细说明用
     UIButtonTypeInfoLight 亮色感叹号
     UIButtonTypeInfoDark 暗色感叹号
     UIButtonTypeContactAdd 十字加号按钮
     UIButtonTypeRoundedRect = UIButtonTypeSystem,   // Deprecated, use UIButtonTypeSystem instead
     */
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.frame = CGRectMake(20,200,100,50);
    [self.view addSubview:btn];
    
    
    // UIButtonTypeSystem 标准的类型
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame = CGRectMake(100,200,100,50);
    /**
     UIControlStateNormal 常规状态显现
     UIControlStateHighlighted 高亮状态显现
     UIControlStateDisabled 禁用的状态才会显现
     UIControlStateSelected 选中状态
     UIControlStateApplication 当应用程序标志时
     UIControlStateReserved 暂时没有
     */
    // 设置按钮上的文字和默认状态
    [btn2 setTitle:@"Button" forState:UIControlStateNormal];
    // 点中状态
    [btn2 setTitle:@"Button2" forState:UIControlStateHighlighted];
    [self.view addSubview:btn2];
    
    
    // UIButtonTypeSystem 标准的类型
    UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn3.frame = CGRectMake(200,200,100,50);
    // 创建一个UIImage
    UIImage* img = [UIImage imageNamed:@"button.png"];
    // 设置背景图片
    [btn3 setBackgroundImage:img forState:UIControlStateNormal];
    // 设置按钮上的文字
    [btn3 setTitle:@"提 交" forState:UIControlStateNormal];
    // 设置按钮上的文字的颜色
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn3];
    
    // 注册按钮事件
    [btn3 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void) onClick: (id)sender{
    
    UILabel* label = (UILabel*)[self.view viewWithTag:100];
    
    label.text = @"按钮事件被激活";
}

@end
