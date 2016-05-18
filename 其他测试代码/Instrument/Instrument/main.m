//
//  main.m
//  Instrument
//
//  Created by Kyle on 16/5/7.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Instrument.h"
#import "Piano.h"
#import "Violin.h"
#import "Actor.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Instrument *piano = [[Piano alloc] init];
        Piano *piano1 = [[Piano alloc] init];
        Instrument *instrument = [[Instrument alloc] init];
        Violin *violin = [[Violin alloc] init];
        Actor *actor = [[Actor alloc] init];

        [piano play];
        [violin play];
        
        [actor doPlay:piano];
        [actor doPlay:piano1];
        [actor doPlay:violin];
        [actor doPlay:instrument];
    }
    return 0;
}
