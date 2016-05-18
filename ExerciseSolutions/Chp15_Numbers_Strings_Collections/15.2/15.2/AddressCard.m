//
//  AddressCard.m
//  15.2
//
//  Created by trainer on 3/17/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "AddressCard.h"
//#define NSLog(FORMAT,...) fprintf(stderr,"%s\n",[
@implementation AddressCard

-(id)copyWithZone:(NSZone *)zone {
   return [[[self class] allocWithZone:zone] init];
}
-(void)print {

    NSLog (@"====================================");
    NSLog (@"|                                  |");
    NSLog (@"| %-31s |", [_name UTF8String]);
    NSLog (@"| %-31s |", [_email UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|          O         O             |");
    NSLog (@"====================================");
    
}

-(NSComparisonResult)compareNames:(AddressCard *)card {
    return [_name compare:card.name];
}
@end
