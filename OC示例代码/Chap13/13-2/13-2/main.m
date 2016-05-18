//
//  main.m
//  13-2
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i;
        char word[] = { 'H', 'e', 'l', 'l', 'o', '!' };
        
        for (i = 0; i < 6; ++i )
            printf("%c\n", word[i]);
    }
    return 0;
}
/*
H
e
l
l
o
!
*/