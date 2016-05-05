//
//  Rectangle.h
//  8-03
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
@property int width, height;
-(void) setWidth: (int)w andHeight: (int)h;
-(int) area;
-(int) perimeter;
@end
