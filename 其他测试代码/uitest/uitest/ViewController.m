//
//  ViewController.m
//  uitest
//
//  Created by Kyle on 16/5/10.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
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

- (IBAction)click:(id)sender {
    [UIApplication sharedApplication].applicationIconBadgeNumber = 10;
}

- (IBAction)donghua:(id)sender {
    CATransition *ca = [CATransition animation];
    ca.type = @"cube";
    ca.subtype = @"fromLeft";
    ca.duration = 3;
    [self.view.layer addAnimation:ca forKey:nil];
    
}
@end
