//
//  main.m
//  6-02
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        
        [frac1 setNumerator:1];
        [frac1 setDenominator:0];
        
        [frac2 setNumerator:3];
        [frac2 setDenominator:4];
        
        [frac1 print];
        NSLog(@"=");
        NSLog(@"%f",[frac1 convertTonumber]);
        [frac2 print];
        NSLog(@"=");
        
        NSLog(@"%g",[frac2 convertTonumber]); //%g 有几位小数显示几位
    }
    return 0;
}
