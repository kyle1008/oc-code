//
//  main.m
//  4-5
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float f1 = 123.125, f2;
        int i1, i2 = -150;
        
        i1 = f1;//浮点类型转换成整形
        NSLog(@"%f assigned to an int produces %i", f1, i1);
        
        f1 = i2;//整型转换成浮点类型
        NSLog(@"%i assigned to a float produces %f", i2, f1);
        
        f1=i2 / 100;//整数除整数得到整数
        NSLog(@"%i divided by 100 produces %f", i2, f1);
        
        f2 = i2 /100.0;//整数除浮点数得到浮点数，i2除以浮点数时自动转换成浮点类型
        NSLog(@"%i divided by 100.0 produces %f", i2, f2);
        
        f2 = (float) i2 /100;//强制类型转换
        NSLog(@"(float) %i divided by 100 produces %f", i2,f2);
        
    }
    return 0;
}
