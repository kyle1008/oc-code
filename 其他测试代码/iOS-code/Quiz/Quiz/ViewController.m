//
//  ViewController.m
//  Quiz
//
//  Created by Kyle on 16/5/12.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;


@property (nonatomic) int currentQuestionIndesx;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@end

@implementation ViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //调用父类的初始化方法
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self){
        self.questions = @[@"From?",
                           @"What's 7+7 ?",
                           @"What's the capital?"];

        self.answers = @[@"Grapes",
                         @"14",
                         @"MOntpelier"];
    }
    //返回新对象的地址
    return self;
}

- (IBAction)showQuestion:(id)sender {
    self.currentQuestionIndesx++;
    if (self.currentQuestionIndesx == [self.questions count]) {
        self.currentQuestionIndesx = 0;
    }
    //根据当前问题的序号从数组中取出相应的答案
    NSString *question = self.questions[self.currentQuestionIndesx];
    //显示问题
    self.questionLabel.text = question;
    //重置答案字符串
    self.answerLabel.text = @"?????";
}

- (IBAction)showAnswer:(id)sender {
    //当前问题的答案是什么？
    NSString *answer = self.answers[self.currentQuestionIndesx];
    //显示相应的答案
    self.answerLabel.text = answer;
}

@end
