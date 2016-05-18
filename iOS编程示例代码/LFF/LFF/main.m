//
//  main.m
//  类方法
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "bnrItem.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        //遍历数组
        for (int i = 0; i < 10; i++) {
            bnrItem *item = [bnrItem randomItem];
            [items addObject:item];
            
            for (bnrItem *item in items) {
                NSLog(@"%@", item);
            }
        }
    }
    return 0;
}
