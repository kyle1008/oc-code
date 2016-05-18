//
//  main.m
//  6.5.2
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        NSLog(@"type in your expressions");
        scanf("%lf %c%lf",&value1, &operator, &value2);
        deskCalc.accumulator = value1;
        BOOL isGood = YES;
        if (operator == '+') {
            [deskCalc add:value2];
        } else if (operator == '-') {
            [deskCalc substract:value2];
        } else if (operator == '*') {
            [deskCalc multiply:value2];
        } else if (operator == '/') {
            if (value2 == 0) {
                isGood = NO;
                NSLog(@"Division by zero");
            }
            [deskCalc divide:value2];
        } else {
            isGood = NO;
            NSLog(@"unknown operator");
        }
        if (isGood) {
           NSLog(@"The accumulator is %.2f",deskCalc.accumulator);
        }
       
    }
    return 0;
}
