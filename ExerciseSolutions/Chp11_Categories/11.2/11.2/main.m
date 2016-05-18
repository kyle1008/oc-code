//
//  main.m
//  11.2
//
//  Created by kongyunpeng on 3/15/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction+Comparison.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc] init];
        f1.numerator = 3;
        f1.denominator = 4;
        
        Fraction *f2 = [[Fraction alloc] init];
        f2.numerator = 1;
        f2.denominator = 4;
        
        NSLog(@"f1 is equal to f2:%i",[f1 isEqual:f2]);
        
       int result = [f1 compare:f2];
        NSLog(@"f1 compare to f2:%i",result);
    }
    return 0;
}
