//
//  main.m
//  7.4
//
//  Created by trainer on 3/10/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac = [[Fraction alloc] init];
        frac.numerator = 5;
        frac.denomiator = 3;
        [frac print];
        frac.numerator = 4;
        frac.denomiator = 5;
        [frac print];
    }
    return 0;
}
