//
//  main.m
//  string_alloc
//
//  Created by Kyle on 16/5/8.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *n1 = [[NSNumber alloc] initWithInt:100];
        NSNumber *n2 = [NSNumber numberWithInt:200];
        
        NSLog(@"n1 = %@, n2 = %@",n1, n2);
    }
    return 0;
}
