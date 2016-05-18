//
//  Rectangle.h
//  8-04
//
//  Created by Kyle on 16/5/5.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XYPoint;//放在@interface前面

@interface Rectangle : NSObject
@property int width, height;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;

-(void) setWidth: (int)w andHeight: (int)h;
-(int) area;
-(int) perimeter;
@end
