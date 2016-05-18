//
//  main.m
//  6.5.1
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please input two intergers");
        int n,m ;
        scanf("%i%i",&n,&m);
        if (m % n == 0) {
            NSLog(@"the first is divisable by the second");
        } else {
            NSLog(@"the first is not divisable by the second");
        }
        
        
    }
    return 0;
}
