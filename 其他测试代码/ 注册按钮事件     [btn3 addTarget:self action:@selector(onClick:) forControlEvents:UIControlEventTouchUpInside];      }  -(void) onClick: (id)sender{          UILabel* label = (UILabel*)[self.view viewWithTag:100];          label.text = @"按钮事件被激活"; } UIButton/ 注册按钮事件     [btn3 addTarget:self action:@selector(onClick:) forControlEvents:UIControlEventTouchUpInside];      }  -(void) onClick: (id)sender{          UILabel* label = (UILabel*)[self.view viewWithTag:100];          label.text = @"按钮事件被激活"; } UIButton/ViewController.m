//
//  ViewController.m
//   注册按钮事件     [btn3 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];      }  -(void) onClick: (id)sender{          UILabel* label = (UILabel*)[self.view viewWithTag:100];          label.text = @"按钮事件被激活"; } UIButton
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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
