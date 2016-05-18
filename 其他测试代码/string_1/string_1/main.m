//
//  main.m
//  string_1
//
//  Created by Kyle on 16/5/8.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *s2 = [NSString stringWithFormat:@"b"];
        NSString *s1 = [NSString stringWithFormat:@"a"];
        //比较大小
        NSComparisonResult result = [s1 caseInsensitiveCompare:s2];
        if (result == NSOrderedAscending ) {
            NSLog(@"升序：a<b");
        }
        else if(result == NSOrderedSame)
            NSLog(@"内容相同");
        else if(result == NSOrderedDescending)
            NSLog(@"降序：a>b");
        NSString *s3 = @"abcde,FG";
        //计算字符长度
        NSUInteger len = [s3 length];
        NSLog(@"字符串长度为%lu", len);
        
        //分割字符串
        NSArray *array = [s3 componentsSeparatedByString:@","];
        NSLog(@"%@", array);
        //访问指定位置字符
        char s = [s3 characterAtIndex:4];
        NSLog(@"%c", s);//e
        //截取字符串:丢弃指定位置以前的字符，只保留后面的
        NSString *sub_s3 = [s3 substringFromIndex:2];
        NSLog(@"%@", sub_s3);//cde,FG
        //截取开头到指定位置的字符
        NSString *sub_s4 = [s3 substringToIndex:5];
        NSLog(@"%@", sub_s4);//abcde
        //指定范围内截取
        NSRange range = NSMakeRange(2,3);//从第2个开始截取3位
        NSString *sub_s5 = [s3 substringWithRange:range];
        NSLog(@"%@", sub_s5);//cde
        
        
        //字符大小写转换
        NSLog(@"%@", [s3 uppercaseString]);//全部大写
        NSLog(@"%@", [s3 lowercaseString]);//全部小写
        NSLog(@"%@", [s3 capitalizedString]);//首字母大写，其他变小写
        
        //转换为基本数据类型
        NSString *s4 = @"100";
        int a = [s4 intValue];
        NSString *s5 = @"10.785";
        float b = [s5 floatValue];
        NSString *s6 = @"1";
        BOOL flag = [s6 boolValue];
        
        
        
        
        
        
        NSLog(@"Game Over");
        
    }
    return 0;
}
