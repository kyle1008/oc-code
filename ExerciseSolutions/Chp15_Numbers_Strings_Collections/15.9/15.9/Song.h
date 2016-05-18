//
//  Song.h
//  15.9
//
//  Created by kongyunpeng on 4/6/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property(nonatomic,copy) NSString *title,*artist,*album;
@property(nonatomic) float playingTime;
-(instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist album:(NSString *)album playingTime:(float)playingTime;
@end
