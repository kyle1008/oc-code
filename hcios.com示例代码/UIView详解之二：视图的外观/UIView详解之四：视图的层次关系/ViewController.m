//
//  ViewController.m
//  UIView详解之四：视图的层次关系
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *view1;
@end

@implementation ViewController

-(void)viewDidLoad {
    
    [super viewDidLoad];
    NSLog(@"subviews in view1:%d",self.view1.subviews.count);
    NSLog(@"subviews in controllerview:%i", self.view.subviews.count);
    
}
-(IBAction)addView:(id)sender{
    UIView *addView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    addView.backgroundColor = [UIColor redColor];
    [self.view1 addSubview:addView];
}
-(IBAction)addView1:(id)sender{
    UIView *addView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    addView1.backgroundColor = [UIColor blueColor];
    [self.view addSubview:addView1];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
