//
//  main.m
//  7-02
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myfrac1 = [[Fraction alloc] init];
        Fraction *myfrac2 = [[Fraction alloc] init];
        
        [myfrac1 setTo:1 over:3];
        [myfrac2 setTo:2 over:3];
        
        [myfrac1 print];
        NSLog(@"+");
        [myfrac2 print];
        NSLog(@"=");
        
        [myfrac1 add: myfrac2];
        [myfrac1 print];
    }
    return 0;
}
