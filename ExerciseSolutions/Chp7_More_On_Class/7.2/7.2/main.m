//
//  main.m
//  7.2
//
//  Created by trainer on 3/10/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac = [[Fraction alloc] init];
        frac.numerator = 3;
        frac.denominator = 6;
        [frac print:YES];
        [frac print:FALSE];
    }
    return 0;
}
