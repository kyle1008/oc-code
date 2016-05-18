//
//  Square.m
//  8-03
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide: (int) s;{
[self setWidth: s andHeight: s];//
}
-(int) side;{
    return self.width;//[self width];
}

@end
