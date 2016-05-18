//
//  main.m
//  6.5.4
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"key in the number and operator");
        float num;
        char operator;
        
        Calculator *calc = [[Calculator alloc] init];
        //这里会有一个无限循环：如果输入的内容是S 10，那么scanf将读不到任何内容，而一直重复上次的读取，怎么重复这个Bug?
        while (operator != 'E') {
           // NSLog(@"%g",calc.accumulator);
            int result = scanf("%g %c",&num,&operator);
            if (result == 0) {
                NSLog(@"maybe you the order of your input is not corect");
                break;
                
            }
           // NSLog(@"%i",result);
            switch (operator) {
                case 'S':
                    [calc add:num];
                    [calc print];
                    break;
                case '/':
                    [calc divide:num];
                    [calc print];
                    break;
                case '-':
                    [calc substract:num];
                    [calc print];
                    break;
                case '+':
                    [calc add:num];
                    [calc print];
                    break;
                case '*':
                    [calc multiply:num];
                    [calc print];
                    break;
                case 'E':
                    NSLog(@"End of Calculations");
                    break;
                default:
                    NSLog(@"Unknown Operator");
                    break;
            }
            
        }
    }
    return 0;
}
