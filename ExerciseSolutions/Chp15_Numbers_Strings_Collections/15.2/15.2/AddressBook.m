//
//  AddressBook.m
//  15.2
//
//  Created by trainer on 3/17/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "AddressBook.h"
#import "AddressCard.h"
@implementation AddressBook



-(instancetype) initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _book = [[NSMutableArray alloc] init];
        _bookName = name;
    }
    return self;
}
-(void)addCard:(AddressCard *)theCard{
    [_book addObject:theCard];
}
-(NSInteger) entries{
    return _book.count;
}
-(void)list{
    NSLog(@"====== Contents of: %@ ======",_bookName);
    for (AddressCard *card in _book) {
        NSLog(@"%-16s%-10s",[card.name UTF8String],[card.email UTF8String]);
    }
    NSLog(@"====================================");
}
-(void)listUsingBlock {
    NSLog(@"====== Contents of: %@ ======",_bookName);
    [_book enumerateObjectsUsingBlock:^(AddressCard *card, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%-16s%-10s",[card.name UTF8String],[card.email UTF8String]);
    }];
    NSLog(@"====================================");
}
-(AddressCard *)lookup:(NSString *)name {
    for (AddressCard *card in _book) {
        if ([card.name caseInsensitiveCompare:name] == NSOrderedSame ) {
            
            return card;
        }
    }
    return nil;
}

-(AddressCard *)lookupAnyMatches:(NSString *)name {
    for (AddressCard *card in _book) {
        NSRange range = [card.name rangeOfString:name];
        NSLog(@"the range is %lul",range.location)
        if (range.location != NSNotFound) {
            return card;
        }
    }
    return nil;
}

-(void)sort {
    _book = [[_book sortedArrayUsingSelector:@selector(compareNames:)]mutableCopy];
}

/*
 compareNames: is not define in this source file
 but we still can use it.
 so the selector is stored in a global way
 */
@end
