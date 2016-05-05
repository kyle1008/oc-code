//
//  main.m
//  6-09
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
        switch (operator) {
            case '+':
                [deskCal add:value2];
                break;
            case '-':
                [deskCal add:value2];
                break;
            case '*':
                [deskCal add:value2];
                break;
            case '/':
                if (value2 == 0)
                    NSLog(@"Division by zero.");
                else
                    [deskCal div:value2];
                break;
            default:
                NSLog(@"Unknown operator.");
                break;
        }
        
        NSLog(@"%lf",[deskCal accumulator]);
    }
    return 0;
}
