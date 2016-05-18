//
//  main.m
//  6.5.5
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"key in the number you want to reverse");
        int n;
        scanf("%d",&n);
        BOOL isNagative = NO;
        while (n != 0) {
            if (n < 0) {
                n = -n;
                isNagative = YES;
            }
            
            NSLog(@"%d",n % 10);
            n /= 10;
           
        }
      
      
     
        if (isNagative) {
            NSLog(@"-");
        }
        
    }
    return 0;
}
