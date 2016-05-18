//
//  main.m
//  5.8
//
//  Created by kongyunpeng on 4/19/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"please input the value to add:");
        int inputValue;
        scanf("%i",&inputValue);
        int sum = 0;
        while (inputValue != 0) {
            sum += inputValue % 10;
            inputValue /= 10;
        }
        
        NSLog(@"the result is %i",sum);
        
        
    }
    return 0;
}
