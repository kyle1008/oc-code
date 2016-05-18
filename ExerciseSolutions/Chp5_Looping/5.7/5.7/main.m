//
//  main.m
//  5.7
//
//  Created by kongyunpeng on 4/19/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, modeNumber;
        NSLog(@"please input your number:");
        scanf("%i",&number);
        while (number != 0) {
            modeNumber =  number % 10;
            NSLog(@"the right digit is %i",modeNumber);
            number /= 10;
        }
    }
    return 0;
}
