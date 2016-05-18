//
//  Complex.h
//  9.4
//
//  Created by kongyunpeng on 4/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property (nonatomic,assign) int real;
@property (nonatomic,assign) int imaginary;
-(id)add:(Complex *)c;
-(void)print;
-(void)setReal:(int)real imaginary:(int)imag;
@end
