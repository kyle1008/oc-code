//
//  ViewController.m
//  Homepwner
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
    //初始化UITextField控件
    UITextField* textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 300, 50)];
    //提示信息，当输入字符的时候将自然消失
    [textField setPlaceholder:@"请输入......"];
    /**
     UIKeyboardTypeDefault,                默认键盘
     UIKeyboardTypeASCIICapable,           英文字母和特殊字符键盘
     UIKeyboardTypeNumbersAndPunctuation,  数字和标点符号键盘
     UIKeyboardTypeURL,                    输入URL到键盘
     UIKeyboardTypeNumberPad,              数字键盘
     UIKeyboardTypePhonePad,               电话键盘
     UIKeyboardTypeNamePhonePad,           可以输入人名和电话号码键盘
     UIKeyboardTypeEmailAddress,           Email键盘
     UIKeyboardTypeDecimalPad              数字和小数键盘
     UIKeyboardTypeWebSearch               搜索键盘
     */
    [textField setKeyboardType:UIKeyboardTypeASCIICapable];
    //设置边框
    /*
     UITextBorderStyleRoundedRect   圆角边框
     UITextBorderStyleLine          直线边框
     UITextBorderStyleBezel         直角边框
     UITextBorderStyleNone          默认边框
     */
    [textField setBorderStyle:UITextBorderStyleRoundedRect];
    
    // 启用字符回显功能（密码框）
    //    [textField setSecureTextEntry:YES];
    // 默认打开键盘
    //    [textField becomeFirstResponder];
    // 设置键盘的return改成next
    //    [textField setReturnKeyType:UIReturnKeySearch];
    
    // 清除按钮，即输入字符后文本框尽头出现一个“?”的圆圈
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    // 注册事件
    [textField addTarget:self action:@selector(finishHandler:) forControlEvents:UIControlEventEditingChanged];
    
    [self.view addSubview:textField];
    
    
    
}

-(void) finishHandler:(id)sender{
    UITextField* textField = (UITextField*)sender;
    NSString* value = textField.text;
    //当输入字符长度大于等于6的时候，键盘关闭
    if (value.length >= 6) {
        //放弃响应
        [sender resignFirstResponder];
        //        //结束编辑，关闭键盘
        ////        [self.view endEditing:YES];
    }else{
        //获得响应
        [sender becomeFirstResponder];
    }
    
}

@end