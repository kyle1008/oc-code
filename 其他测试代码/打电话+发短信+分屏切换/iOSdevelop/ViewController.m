//
//  ViewController.m
//  iOSdevelop
//
//  Created by Kyle on 16/5/10.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//打电话
- (IBAction)btn:(id)sender {
   // NSLog(@"你点击了我！");
    //1.设定号码
    NSURL *url = [NSURL URLWithString:@"TEL://10086"];

    //2.调用系统拨号
    [[UIApplication sharedApplication] openURL:url];
   
}
//发短信
- (IBAction)btn2:(id)sender {
    //设定短信接收者
    NSURL *url1 = [NSURL URLWithString:@"sms://10086"];
    //编写短信内容
    [[UIApplication sharedApplication] openURL:url1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
