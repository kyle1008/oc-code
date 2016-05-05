//
//  main.m
//  13-4
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
void calculateTriangularNumber (int n)
{
    int i;
    int triangularNumber=0;

    for ( i = 1; i<= n; ++i )
        triangularNumber += i;
        NSLog(@"Triangular Number %i is %i", n, triangularNumber);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        calculateTriangularNumber(10);
        calculateTriangularNumber(20);
        calculateTriangularNumber(50);
    }
    return 0;
}

