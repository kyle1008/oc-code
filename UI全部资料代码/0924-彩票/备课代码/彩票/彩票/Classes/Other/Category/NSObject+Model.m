//
//  NSObject+Model.m
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "NSObject+Model.h"

#import <objc/runtime.h>

@implementation NSObject (Model)

+ (instancetype)objcWithDict:(NSDictionary *)dict mapDict:(NSDictionary *)mapDict
{
    
    
    id objc = [[self alloc] init];
    
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList(self, &count);
    
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        
        NSString *name = @(ivar_getName(ivar));
        
        name = [name substringFromIndex:1];
        
        id value = dict[name];
        
        if (value == nil) {
            
            if (mapDict) {
                NSString *mapName = mapDict[name];
                
                value = dict[mapName];
            }
            
        }
        
        [objc setValue:value forKeyPath:name];
    }
    
    
    return objc;
}

@end
