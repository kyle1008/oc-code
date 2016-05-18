//
//  Fraction.h
//  9.4
//
//  Created by kongyunpeng on 4/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property (nonatomic, assign) int numberator;
@property (nonatomic, assign) int denominator;
-(void)set:(int)n over:(int)d;

-(void)print;
@end


