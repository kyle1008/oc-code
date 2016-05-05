//
//  main.m
//  6-07
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        char c;
        NSLog(@"enter ur single charactor:");
        scanf(" %c", &c);
        
        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))
            NSLog(@"it's a alphabetic charactor.");
        else if (c >= '0' && c <= '9')//字符‘0’与数字0不同，在ASCII码中字符‘0’为数字48；
            NSLog(@"it's a digit.");
        else
            NSLog(@"it's a special charactor.");
    }
    return 0;
}
