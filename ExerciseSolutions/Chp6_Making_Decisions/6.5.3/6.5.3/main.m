//
//  main.m
//  6.5.3
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac = [[Fraction alloc] init] ;
        frac.numerator = 3;
        frac.denominator = 1;
        [frac print];
        
        frac.numerator = 0;
        frac.denominator = 4;
        [frac print];
        
        [frac inPutNumerator:5];
        [frac inPutDenominator:1];
        [frac print];
        
    }
    return 0;
}
