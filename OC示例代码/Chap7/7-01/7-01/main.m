//
//  main.m
//  7-01
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFra = [[Fraction alloc] init];
        
        //setter
        [myFra setNum: 1];
        [myFra setDen: 3];
        
        NSLog(@"The value of myFra is :");
        [myFra print];
        
        NSLog(@"%lf",[myFra convertToNum]);
        
    }
    return 0;
}
