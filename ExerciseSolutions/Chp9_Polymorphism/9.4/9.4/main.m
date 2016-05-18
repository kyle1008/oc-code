//
//  main.m
//  9.4
//
//  Created by kongyunpeng on 4/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Complex *c1 = [[Complex alloc] init];
        [c1 setReal:1 imaginary:3];
        Complex *c2 = [[Complex alloc] init];
        [c2 setReal:2 imaginary:4];

        
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        id dataValue1,dataValue2,result;
        dataValue1 = c1;
        dataValue2 = c2;

       result = [dataValue1 add:dataValue2];
        [result print];

        
        
        

    }
    return 0;
}
