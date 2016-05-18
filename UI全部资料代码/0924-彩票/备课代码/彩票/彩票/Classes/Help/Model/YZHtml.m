//
//  YZHtml.m
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "NSObject+Model.h"
#import "YZHtml.h"

@implementation YZHtml

+ (instancetype)htmlWithDict:(NSDictionary *)dict
{
    
    
    YZHtml *html = [YZHtml objcWithDict:dict mapDict:@{@"ID":@"id"}];
//    [[self alloc] init];
    
//    [html setValuesForKeysWithDictionary:dict];
    
    
    
    return html;
    
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.ID = value;
    }else{
        [super setValue:value forUndefinedKey:key];
    }
}

@end
