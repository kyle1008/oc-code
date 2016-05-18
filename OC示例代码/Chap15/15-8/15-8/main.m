//
//  main.m
//  15-8
//
//  Created by Kyle_Zhang on 16/4/29.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i;
        NSArray *monthNames = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August",@"Sept" ,@"Oct",@"Nov", @"Dec" ];
        
        printf("Month  Name\n");
        printf("=====  =======\n");
       
        for (i = 0; i < 12; ++i) {
            NSLog(@"%2i %@",i + 1, monthNames[i]);
        }
        
    }
    return 0;
}
