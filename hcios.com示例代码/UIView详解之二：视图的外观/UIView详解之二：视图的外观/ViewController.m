//
//  ViewController.m
//  UIView详解之二：视图的外观
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//视图背景颜色
@property(nullable,nonatomic,copy) UIColor *backgroundColor;
//透明度,对于UIView及其子类，当透明度alpha值小于等于0.01时，就不能够响应用户交互了
@property(nonatomic) CGFloat alpha;
//是否隐藏
@property(nonatomic,getter=isHidden) BOOL hidden;

//frame:视图在其父视图坐标系上的位置和大小
@property(nonatomic) CGRect frame;
//center:视图中心在其父视图坐标系的坐标
@property(nonatomic) CGPoint center;

//bounds:视图在其自己坐标系上的位置和大小
@property(nonatomic) CGRect bounds;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //添加view1到控制器视图self.view
    UIView *view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(100, 200, 200, 400);
    //frame相对于父视图(self.view)的坐标,(0,0)位于左上角
    view1.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view1];
    NSLog(@"view1.frame:%@",NSStringFromCGRect(view1.frame));
    NSLog(@"view1.bounds:%@",NSStringFromCGRect(view1.bounds));
    NSLog(@"view1.center:%@",NSStringFromCGPoint(view1.center));
    
    //添加view2到控制器视图self.view
    UIView *view2 = [[UIView alloc] init];
    view2.frame = CGRectMake(0, 0, 200, 100);
    view2.backgroundColor = [UIColor redColor];
    [self.view addSubview:view2];
    NSLog(@"view2.frame:%@",NSStringFromCGRect(view2.frame));
    NSLog(@"view2.bounds:%@",NSStringFromCGRect(view2.bounds));
    NSLog(@"view2.center:%@",NSStringFromCGPoint(view2.center));
    
    //添加View3到View1
    UIView *view3 = [[UIView alloc] init];
    view3.frame = CGRectMake(0, 0, 100, 100);
    view3.backgroundColor = [UIColor blueColor];
    [view1 addSubview:view3];
    
    NSLog(@"view3.frame:%@",NSStringFromCGRect(view3.frame));
    NSLog(@"view3.bounds:%@",NSStringFromCGRect(view3.bounds));
    NSLog(@"view3.center:%@",NSStringFromCGPoint(view3.center));
}
- (IBAction)reset:(id)sender {
}
- (IBAction)sf:(id)sender {
}
- (IBAction)d:(id)sender {
}
- (IBAction)rotate:(id)sender {
}
- (IBAction)rotate:(id)sender {
}
- (IBAction)rotate:(id)sender {
}
- (IBAction)rotate:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
