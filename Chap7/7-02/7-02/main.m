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
        Fraction *myfrac = [[Fraction alloc] init];
        
        //点运算符赋值
        myfrac.num = 1;
        myfrac.den = 3;
        
        NSLog(@"The numerator is %i,and the denominator is %i", myfrac.num, myfrac.den);
    }
    return 0;
}
