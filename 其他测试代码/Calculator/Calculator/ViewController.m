//
//  ViewController.m
//  Calculator
//
//  Created by Kyle on 16/5/6.
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

- (IBAction)digit0:(UIButton *)sender {
}

- (IBAction)digit2:(UIButton *)sender {
}

- (IBAction)add:(UIButton *)sender {
    accumulator += value;
}

- (IBAction)accumulator:(UIButton *)sender {
}
@end
