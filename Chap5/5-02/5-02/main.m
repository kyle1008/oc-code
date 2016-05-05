//
//  main.m
//  5-02
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        triangularNumber = 0;
        for (n = 1; n <= 200; n = n +1) {
            triangularNumber += n;
        }
        NSLog(@"The 200th triangular number is %i", triangularNumber);
    }
    return 0;
}

/*
The 200th triangular number is 20100
*/