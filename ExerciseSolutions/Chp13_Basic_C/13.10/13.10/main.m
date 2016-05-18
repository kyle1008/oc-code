//
//  main.m
//  13.10
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^exchange) (int*,int *) = ^(int* a, int *b) {
            int temp;
            temp = *a;
            *a = *b;
            *b = temp;
            
        };
        int a1 = 5;
        int b1 = 6;
        int *a = &a1;
        int *b = &b1;
        exchange(a,b);
        printf("%i\n",a1);
        printf("%i\n",*a);
        

    }
    return 0;
}
