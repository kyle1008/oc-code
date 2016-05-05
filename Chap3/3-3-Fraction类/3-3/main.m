//
//  main.m
//  3-3
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建两个对象myFrac1和myFrac2
        Fraction * myFrac1 = [[Fraction alloc] init];
        Fraction * myFrac2 = [[Fraction alloc] init];
        
        //设值
        [myFrac1 setNumerator:1];
        [myFrac1 setDenominator:3];
        
        [myFrac2 setNumerator:5];
        [myFrac2 setDenominator:8];
      
        NSLog(@"First Fraction is:");
        [myFrac1 print];
        
        NSLog(@"Second Fraction is:");
        [myFrac2 print];
    }
    return 0;
}
