//
//  main.m
//  5-06
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int count = 1;
        while (count <= 5) {
            NSLog(@"%i", count);
            ++count;
        }
    }
    return 0;
}
