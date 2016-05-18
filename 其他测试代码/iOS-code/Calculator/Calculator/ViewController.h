//
//  ViewController.h
//  Calculator
//
//  Created by Kyle on 16/5/12.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;
-(void) processDigit:(int) digit;
-(void) processOp:(char) theOp;
-(void) storeFracPart;

//数字键
-(IBAction)clickDigit:(UIButton *)sender;
//算术
-(IBAction)clickPlus;
-(IBAction)clickMinus;
-(IBAction)clickMul;
-(IBAction)clickDiv;
//Misc
-(IBAction)clickFan;
-(IBAction)clickEqu;
-(IBAction)clickClear;


@end
