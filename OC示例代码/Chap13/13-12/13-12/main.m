//
//  main.m
//  13-12
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char c = 'Q';
        char *charptr = &c;//char *charptr;charptr = &c;
        
        NSLog(@"%c %c", c, *charptr);
        
        c = '/';
        NSLog(@"%c %c", c, *charptr);
        
        *charptr = '(';
        NSLog(@"%c %c", c, *charptr);
    }
    return 0;
}
