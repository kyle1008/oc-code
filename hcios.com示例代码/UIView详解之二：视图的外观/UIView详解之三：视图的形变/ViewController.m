//
//  ViewController.m
//  UIView详解之三：视图的形变
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//Main.storyboard上创建视图view1
@property (weak, nonatomic) IBOutlet UIView *view1;

@end

@implementation ViewController

//代码创建子视图view2
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    //创建子视图view1并加载到父视图view
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 60, 20)];
    view2.backgroundColor = [UIColor yellowColor];
    //把子视图view2加载到子视图view1上
    [self.view1 addSubview:view2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//视图位移
-(IBAction)move:(id)sender{
    CGPoint point = self.view1.center;
    point.x += 10;
    point.y += 10;
    self.view1.center = point;
    
    NSLog(@"view1 frame:%@", NSStringFromCGRect(self.view1.frame));
}
//视图放大
-(IBAction)scale1:(id)sender{
    //x,y轴方向放大
    self.view1.transform = CGAffineTransformScale(self.view1.transform, 1.2,1.2);
    NSLog(@"view1 frame:%@", NSStringFromCGRect(self.view1.frame));
}
//视图缩小
-(IBAction)scale:(id)sender{
    //x,y轴方向缩小
    self.view1.transform = CGAffineTransformScale(self.view1.transform, 0.5,0.5);
    NSLog(@"view1 frame:%@", NSStringFromCGRect(self.view1.frame));
}
//视图旋转
-(IBAction)rotate:(id)sender{
    //顺时针旋转45度 M_PI代表360度，正数顺时针，负数逆时针
    self.view1.transform = CGAffineTransformRotate(self.view1.transform, M_PI_4);
    NSLog(@"view1 frame:%@", NSStringFromCGRect(self.view1.frame));
}

//视图重置
-(IBAction)reset:(id)sender{
    //顺时针旋转45度 M_PI代表360度，正数顺时针，负数逆时针
    self.view1.transform = CGAffineTransformIdentity;    NSLog(@"view1 frame:%@", NSStringFromCGRect(self.view1.frame));
}
@end













