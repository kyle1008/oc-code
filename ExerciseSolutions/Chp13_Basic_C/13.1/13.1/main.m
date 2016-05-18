//
//  main.m
//  13.1
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 “Write a function that calculates the average of an array of 10 floating-point values and returns the result.”
 
 Excerpt From: Stephen G. Kochan. “Programming in Objective-C, Sixth Edition (Jason Arnold's Library).” iBooks.
 */

float averageTenFloats2(float *ten) {
    float sum = 0;
    int length =  sizeof(ten)/sizeof(float);
//only if you declare an array as a point e.g ptr, the sizeof ptr is then the size of the array


    for (int i = 0; i < length; ++i) {
        sum += ten[i];
    }
    sum /= 10;
    return sum;
}

float averageTenFloats(float ten[10]) {
    float sum = 0;
    for (int i = 0; i < 10 ;i++) {
        sum += ten[i];
        
    }
    sum /= 10;
    return sum;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("sum:%.2f\n",averageTenFloats((float[10]){3.1,3.2})) ;//compound literal
        printf("sum:%.2f\n",averageTenFloats2((float[10]){3.1,3.2})) ;

    }
    return 0;
}
