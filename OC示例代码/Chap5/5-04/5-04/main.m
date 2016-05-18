//
//  main.m
//  5-04
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber;
        NSLog(@"What triangularNumber do you want?");
        scanf("%i", &number);
        triangularNumber = 0;
        for (n = 1; n <= number; ++n) {
            triangularNumber += n;
        }
        NSLog(@"Triangular Number %i is %i\n",number, triangularNumber);
    }
    return 0;
}

/*
What triangularNumber do you want?
100
Triangular Number 100 is 5050
 */