//
//  AddressBook.h
//  15.2
//
//  Created by trainer on 3/17/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AddressCard;
@interface AddressBook : NSObject
@property (nonatomic,copy) NSString *bookName;
@property (nonatomic,strong) NSMutableArray *book;
-(instancetype) initWithName:(NSString *)name;
-(void)addCard:(AddressCard *)theCard;
-(NSInteger) entries;
-(void)list;
-(void)listUsingBlock;
-(AddressCard *)lookup:(NSString *)name;
-(AddressCard *)lookupAnyMatches:(NSString *)name;
-(void)sort;
@end
