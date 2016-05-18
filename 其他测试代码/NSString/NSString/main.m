//
//  main.m
//  NSString
//
//  Created by Kyle on 16/5/8.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建字符串的方式：
        //1.快速创建
        NSString *str1 = @"这是一个字符串！";
        //2.alloc创建
        NSString *str2 = [[NSString alloc] initWithString:@"通过alloc创建的字符串"];
        //3.通过格式化字符创建
        NSString *str3 = [[NSString alloc] initWithFormat:@"ABCDEF"];
        //
        int b =100;
        NSString *str4 = [NSString stringWithFormat:@"通过类方法创建，数值是:%d",b];
        NSLog(@"%@\n%@\n%@\n%@", str1, str2, str3, str4);
        
        NSString *str5 = [[NSString alloc] initWithFormat:@"ABCDEF"];
        //NSString *str6 = str5;
        
        //比较指针的地址
        if(str3 == str5){
            NSLog(@"str3 = str5");
        }
        
        //比较字符串的内容
        BOOL isSame = [str5 isEqualToString:str3];
        if (isSame) {
            NSLog(@"字符串内容一样");
        }
    }
    return 0;
}
