//
//  main.m
//  15.2
//
//  Created by trainer on 3/17/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AddressCard *card = [[AddressCard alloc] init];
        card.name = @"kongyunpeng";
        card.email = @"kongyunpeng@2011@sina.com";
        [card print];
        AddressCard *card1 = [card copy];
        AddressCard *card2 = [card copy];
        AddressCard *card3 = [card copy];
        AddressCard *card4 = [card copy];
        
        
        NSString  *aName = @"Julia Kochan";
        NSString  *aEmail = @"jewls337@axlc.com";
        NSString  *bName = @"Tony Iannino";
        
        NSString  *bEmail = @"tony.iannino@techfitness.com";
        NSString  *cName = @"Stephen Kochan";
        NSString  *cEmail = @"steve@classroomM.com";
        NSString  *dName = @"Jamie Baker";
        NSString  *dEmail = @"jbaker@classroomM.com";
        
        
        card1.name = aName;
        card1.email = aEmail;
        
        card2.name = bName;
        card2.email = bEmail;
        
        card3.name = cName;
        card3.email = cEmail;
        
        card4.name = dName;
        card4.email = dEmail;
        
        AddressBook *book = [[AddressBook alloc] initWithName:@"contatctBook"];
        
        [book.book addObject:card];
        
        
        [book.book addObject:card1];
        [book.book addObject:card2];
        
        [book.book addObject:card3];
        [book.book addObject:card4];
        
        
        [book list];
        [book listUsingBlock];
        
        AddressCard *result = card1 = [book lookup:card.name];
        NSLog(@"the lookup result:%@",result.name);
        
        result = [book lookupAnyMatches:@"Stephen"];
        NSLog(@"partial match card is:%@",result.name)
        
        [book sort];
        [book list];
    }
    return 0;
}
