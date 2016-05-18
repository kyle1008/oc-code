//
//  main.m
//  13.8
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//
/*
 
 “Write a program that prints all its command-line arguments, one per line at the terminal. Notice the effect of enclosing arguments that contain space characters inside quotation marks.”
 
 Excerpt From: Stephen G. Kochan. “Programming in Objective-C, Sixth Edition (Jason Arnold's Library).” iBooks.
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        for (int i = 0; i <= argc; ++i ) {
            printf("%s\n",argv[i]);
        }
        

    }
    return 0;
}
