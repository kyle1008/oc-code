//
//  ViewController.h
//  Calculator
//
//  Created by Kyle on 16/5/6.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;

- (IBAction)digit0:(UIButton *)sender;

- (IBAction)digit2:(UIButton *)sender;

- (IBAction)add:(UIButton *)sender;

- (IBAction)accumulator:(UIButton *)sender;

@end

