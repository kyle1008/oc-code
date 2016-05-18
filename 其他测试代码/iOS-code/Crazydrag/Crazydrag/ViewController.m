//
//  ViewController.m
//  Crazydrag
//
//  Created by Kyle on 16/5/12.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int currentValue;
}
@end

@implementation ViewController

- (IBAction)slideMoved:(id)sender {
    UISlider *slider = (UISlider*)sender;
    currentValue = lroundf(slider.value);
}

- (IBAction)showAlert:(id)sender {
    NSString *message = [NSString stringWithFormat:@"滑动条的当前数值是: %d",currentValue];
    NSString *str1 = @"您好,苍老师";
    [[UIAlertController alloc]initWithNibName:str1];
//    [[UIAlertController alloc]initWithTitle:@"您好,苍老师" message:message delegate:nil cancelButtonTitle:@"一师是个好学校" otherButtonTitles:nil, nil] show];
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
