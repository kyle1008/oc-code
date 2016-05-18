//
//  main.m
//  13.2
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//

/*
 “The reduce method from your Fraction class 
 finds the greatest common divisor of the numerator and denominator to reduce the fraction. Modify that method so that it uses the gcd function from Program 13.5 instead. Where do you think you should place the function definition? Are there any benefits to making the function static? Which approach do you think is better, using a gcd function or incorporating the code directly into the method as you did previously? Why?”
 
 Excerpt From: Stephen G. Kochan. “Programming in Objective-C, Sixth Edition (Jason Arnold's Library).” iBooks.
 
 
 */

 /*
 
  Benifits of the static function
  1.make same name function
  2.make the visiblity of the function only in the file

*/


#import <Foundation/Foundation.h>
#import "Fraction.h"

 Fraction* gcd(Fraction *f1) {
    int u = f1.numerator,v = f1.denominator,temp = 0;
    while (u % v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    Fraction *result = [[Fraction alloc] init];
    result.numerator =  f1.numerator / v;
    result.denominator = f1.denominator / v;
    return result;

}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *f1 = [[Fraction alloc] init];
        f1.numerator = 5;
        f1.denominator = 15;
        [f1 reduce];
        [f1 print];
        
        Fraction *f2 = [[Fraction alloc] init];
        f2.numerator = 5;
        f2.denominator = 15;
       Fraction *result = gcd(f2);
        [result print];

    }
    return 0;
}
