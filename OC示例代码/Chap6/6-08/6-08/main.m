//
//  main.m
//  6-08
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        double value1, value2;
        char operator;
        Calculator *deskCal = [[Calculator alloc] init];
       
        NSLog(@"typr ur expression:");
        scanf("%lf %c%lf",&value1, &operator, &value2);//%c前加空格
        [deskCal setAccumulator:value1];
        if (operator == '+')
            [deskCal add:value2];
        else if (operator == '-')
            [deskCal sub:value2];
        else if (operator == '*')
            [deskCal mul:value2];
        else if (operator == '/')
            [deskCal div:value2];
        NSLog(@"%lf",[deskCal accumulator]);
    }
    return 0;
}
