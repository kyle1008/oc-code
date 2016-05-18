//
//  AddressCard.h
//  15.2
//
//  Created by trainer on 3/17/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NSLog(Format,...) fprintf(stderr, "%s\n",[[NSString stringWithFormat:Format, ##__VA_ARGS__]UTF8String]);
@interface AddressCard : NSObject<NSCopying>
@property(nonatomic,copy) NSString *name,*email;
-(void)print;
-(NSComparisonResult)compareNames:(AddressCard *)card;
@end
