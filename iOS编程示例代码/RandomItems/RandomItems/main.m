//
//  main.m
//  RandomItems
//
//  Created by Kyle.Z on 16/5/17.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个NSMutableArray对象
        NSMutableArray *items = [[NSMutableArray alloc] init];
        //向items对象发送消息
        //items addObject:<#(nonnull id)#>
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        
        //发送insertObject：atIndex消息
        //items insertObject:<#(nonnull id)#> atIndex:<#(NSUInteger)#>
        [items insertObject:@"zero" atIndex:0];
        
        //        //1.遍历items数组的方法(for循环)
        //        for (int i = 0; i < [items count]; ++i) {
        //            NSString *item = [items objectAtIndex:i];
        //            NSLog(@"%@",item);
        //        }
        //2.快速枚举法（fast enumeration）
        for (NSString *item in items) {
            NSLog(@"%@",item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
        [item setItemName:@"White Wall"];
        [item setSerialNumber:@"ABcd456"];
        [item setDateCreated:@"2015-4-13"];
        NSLog(@"%@ %@ %@ %i", [item itemName], [item serialNumber], [item dateCreated],[item valueDollars]);
        //方法description继承自父类NSObject，得到其当前对象的类名和内存地址
        [item description];
        NSLog(@"%@", item);
        //释放items指向的NSMutableArray对象
        items = nil;
        
    }
    return 0;
}
