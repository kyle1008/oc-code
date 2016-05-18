////
////  main.m
////  13.4
////
////  Created by kongyunpeng on 4/27/16.
////  Copyright © 2016 universal. All rights reserved.
////
//
///*
// “Write a function to add all the Fractions passed to it in an array and to return the result as a Fraction.”
//
// Excerpt From: Stephen G. Kochan. “Programming in Objective-C, Sixth Edition (Jason Arnold's Library).” iBooks.
// */
//
#import <Foundation/Foundation.h>
#import "Fraction.h"
//Fraction *fractSum (Fraction **arr, int n)
//{
//    Fraction *result = arr[0];
//    for (int i =0; i < n; i++) {
//        result = [result add:arr[i]];
//    }
//    return result;
//}
//
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        Fraction *res = [[Fraction alloc] init];
//
//        Fraction *a = [[Fraction alloc] init];
//        [a setTo:3 over:5];
//        Fraction *b = [[Fraction alloc] init];
//        [b setTo:6 over:7];
//        Fraction *c = [[Fraction alloc] init];
//        [c setTo:1 over:3];
//
//        __autoreleasing Fraction *fArray[10];
//        for (int i = 0; i < 5; ++i) {
//            fArray[i] = [[Fraction alloc] init];
//            fArray[i].numerator = 1;
//            fArray[i].denominator = 5;
//        }
//
//
//
//
//        res = fractSum(fArray, 3);
//
//        [res print];
//
//    }
//}
////Fraction* add(Fraction **fracts) {
////    int length = sizeof(*fracts) / sizeof(Fraction *);
////
////
////    Fraction *result = fracts[0];
////    for (int i = 0; i < length; i++) {
////
////         [result add:fracts[i]];
////
////    }
////
////    return result;
////}
////
////void cArrAsPara(char **cArr) {
////    char *cStr;
////    int length = sizeof(cArr) / sizeof(char *);
////    for (; cArr + length; ++cArr) {
////
////    }
////
////}
////
////int main(int argc, const char * argv[]) {
////    @autoreleasepool {
////
////
////       Fraction  *f1= [[Fraction alloc] init];
////        f1.numerator = 1;
////        f1.denominator = 5;
////
////        Fraction  *f2= [[Fraction alloc] init];
////        f1.numerator = 1;
////        f1.denominator = 5;
////
////
////        Fraction  *f3= [[Fraction alloc] init];
////        f1.numerator = 1;
////        f1.denominator = 5;
////
////        Fraction  * __autoreleasing fs[4] = {f1,f2,f3};
////
////       Fraction *result = add(fs);
////        [result print];
////
////
////
////
////
////
////
////
////
////    }
////    return 0;
////}

Fraction *addFractions (Fraction **f, int c);

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        int c;
        srand ( (unsigned int)time(NULL) ); //rand() seed

        NSLog(@"How many fractions should be created to add-up?");
        scanf("%i", &c);

        Fraction *__autoreleasing aF[c]; //__autoreleasing necessary for ARC release
        for (int i = 0; i < c ; ++i) {
            aF[i] = [[Fraction alloc] init];
            // set random fraction
            [aF[i] setTo: rand() % 10 over: rand() % 10];

            do {
                if (aF[i].numerator == 0) {
                    aF[i].numerator = rand() % 10;
                }
            } while (aF[i].numerator == 0);

            do {
                if (aF[i].denominator == 0) {
                    aF[i].denominator = rand() % 10;
                }
            } while (aF[i].denominator == 0);

            if (aF[i].numerator > aF[i].denominator) {
                int temp = aF[i].numerator;
                aF[i].numerator = aF[i].denominator;
                aF[i].denominator = temp;
            }

            [aF[i] print];
        }

        Fraction *__autoreleasing result = [[Fraction alloc] init];
        result = addFractions(aF, c);

        NSLog(@"results added:");
        [result print];
    }
    return 0;
}

Fraction *addFractions (Fraction **f, int c)
{
    Fraction *result = [[Fraction alloc] init];
    result = f[0];
    for (int i = 1; i < c; ++i) {
        result = [result add: f[i]];
    }
    return result;
}
