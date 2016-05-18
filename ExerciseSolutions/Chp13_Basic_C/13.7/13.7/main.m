//
//  main.m
//  13.7
//
//  Created by kongyunpeng on 4/27/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char *message = "Programming in Objective-C is fun";
        char message2[] = "You said it";
        int x = 100;
        /*** set 1 ***/

        NSLog (@"Programming in Objective-C is fun");
        NSLog (@"%s", "Programming in Objective-C is fun");
        NSLog (@"%s", message);
       /*** set 2 ***/
        NSLog (@"You said it");
        NSLog (@"%s", message2);
        NSLog (@"%s", &message2[0]);

        /*** set 3 ***/
        NSLog (@"said it");
        NSLog (@"%s", message2 + 4);
        NSLog (@"%s", &message2[4]);

    }
    return 0;
}
