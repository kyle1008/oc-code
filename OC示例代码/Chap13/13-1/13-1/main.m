//
//  main.m
//  13-1
//
//  Created by Kyle_Zhang on 16/4/28.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//
//斐波那契数，N=N之前所有数的和,0,1,1,2,3,5,8,13,21,34.....
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int Fibonacci[15], i;
        
        Fibonacci[0] = 0; /*by difinition*/
        Fibonacci[1] = 1; /*ditto(同上)*/
        for(i= 2; i< 15; ++i)
            Fibonacci[i] =Fibonacci[i-1] + Fibonacci[i-2];
        for(i = 0; i < 15; ++ i)
            printf("%i\n", Fibonacci[i]);
    }
    return 0;
}
