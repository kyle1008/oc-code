//
//  main.m
//  7.1
//
//  Created by trainer on 3/10/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac1 = [[Fraction alloc] init];
        frac1.numerator = 1;
        frac1.denomiator = 2;
        
        Fraction *frac2 = [[Fraction alloc] init];
        frac2.numerator = 1;
        frac2.denomiator = 3;
        Fraction *result = [frac1 substract: frac2];
        
        [result print];
    }
    return 0;
}
