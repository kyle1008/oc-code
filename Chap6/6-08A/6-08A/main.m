//
//  main.m
//  6-08A
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Calculator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCal = [[Calculator alloc] init];
        
        NSLog(@"enter ur expression:");
        scanf("%lf %c %lf",&value1, &operator, &value2);
        
        [deskCal setAccumulator:value1];
        
        if (operator == '+')
            [deskCal add:value2];
        else if (operator == '-')
            [deskCal sub:value2];
        else if (operator == '*')
            [deskCal mul:value2];
        else if (operator == '/')
            if (value2 == 0)
                NSLog(@"Division by zero.");
            else
                [deskCal div:value2];
        else
            NSLog(@"Unknown operator.");
        
        NSLog(@"%lf",[deskCal accumulator]);
    }
    return 0;
}
