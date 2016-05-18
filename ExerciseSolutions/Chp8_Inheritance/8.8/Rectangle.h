//
//  Rectangle.h
//  8.8
//
//  Created by trainer on 3/10/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
@property int width,height;
-(void) setWidth:(int)width andHeight:(int)height;
-(void)draw;
@end
