//
//  Rectangle.h
//  8.7
//
//  Created by trainer on 3/10/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XYPoint;
@interface Rectangle : NSObject
@property int width, height;
@property XYPoint *origin;
-(Rectangle *) intersect:(Rectangle *)rect;
@end
