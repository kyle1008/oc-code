//
//  main.m
//  3-2
//
//  Created by Kyle_Zhang on 16/4/26.
//  Copyright © 2016年 Kyle_Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction;//为Fraction类创建一个实例对象
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        //对实例对象初始化
        //等同于myFraction = [[Fraction alloc] init];
        //或者myFraction = [Fraction new];
    
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        //设置分数为1/3
    
        [myFraction print];
        //使用类中定义的print方法输出分数
    }
    return 0;
}
