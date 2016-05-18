//
//  main.m
//  5-05
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularnumber, counter;
        NSLog(@"What triabngular number do you want?");
        for (counter = 1; counter <= 5; ++counter) {
            scanf("%i",&number);
            for (n =1; n <= number; ++n) {
                triangularnumber += n;
                NSLog(@"Triangular Number %i is %i", n, triangularnumber);
            }

        }
        
       
    }
    return 0;
}
