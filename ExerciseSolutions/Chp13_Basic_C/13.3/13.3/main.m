//
//  main.m
//  13.3
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//


/*
 “ An algorithm known as the Sieve of Erastosthenes can generate prime numbers. The algorithm for this procedure is presented here. Write a program that implements this algorithm. Have the program find all prime numbers up to n = 150. What can you say about this algorithm as compared to the ones used in the text for calculating prime numbers?
 Step 1: Define an array of integers P. Set all elements Pi to 0, 2 <= i <= n.
 Step 2: Set i to 2.
 Step 3: If i > n, the algorithm terminates.
 Step 4: If Pi is 0, i is prime.
 Step 5: For all positive integer values of j, such that i×j<=n, set Pi×j to 1.
 Step 6: Add 1 to i and go to Step 3.”

 Excerpt From: Stephen G. Kochan. “Programming in Objective-C, Sixth Edition (Jason Arnold's Library).” iBooks.


 
 */
#import <Foundation/Foundation.h>
void primeArray() {
      int n = 150;
    //int *numbers = [n];
    int numbers[n];
    for (int i = 0; i <= n; ++i) {
        numbers[i] = 1;
    } //make them all prime
    numbers[0] = 0;
    numbers[1] = 0;// 0 1 is not prime
    int count = 0;
    for (int i = 2; i <= n; ++i) {
        ++count;
        for (int j = 2; i * j <= n; j++) {
             ++count;
            numbers[i * j] = 0;
        }
    }
//print

    for (int i = 0; i <= n; ++i) {
        if (numbers[i] == 1) {
            printf("%i\n",i);
        }

    }
    printf("count:%i\n",count);
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
         primeArray();








    }
    return 0;
}
