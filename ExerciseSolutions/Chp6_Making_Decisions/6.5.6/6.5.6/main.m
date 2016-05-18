//
//  main.m
//  6.5.6
//
//  Created by kongyunpeng on 3/9/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Key in an interger and display in English");
        
        int n;
        scanf("%i",&n);
        
        int i = n;
        
        do                  {
            int m  = i;
            int ot = n;
            while (m / 10 != 0) {
                m  = m /    10;
                ot = ot /   10;
            }
            int outPut = ot %   10;
            i /=                10;
            switch (outPut) {
                case 0:
                    NSLog(@"zero");
                    break;
                case 1:
                    NSLog(@"one");
                    break;
                case 2:
                    NSLog(@"two");
                    break;
                case 3:
                    NSLog(@"three");
                    break;
                case 4:
                    NSLog(@"four");
                    break;
                case 5:
                    NSLog(@"five");
                    break;
                case 6:
                    NSLog(@"six");
                    break;
                case 7:
                    NSLog(@"seven");
                    break;
                case 8:
                    NSLog(@"eight");
                    break;
                case 9:
                    NSLog(@"nine");
                    break;
                default:
                    break;
            }
            
        }  while (i != 0);
        
    }
    return 0;
}
