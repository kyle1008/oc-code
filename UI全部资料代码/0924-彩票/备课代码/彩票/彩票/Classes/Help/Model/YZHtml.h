//
//  YZHtml.h
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YZHtml : NSObject

@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSString *html;

@property (nonatomic, strong) NSString *ID;

+ (instancetype)htmlWithDict:(NSDictionary *)dict;

@end
