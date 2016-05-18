//
//  Song.m
//  15.9
//
//  Created by kongyunpeng on 4/6/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Song.h"

@implementation Song
-(instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist album:(NSString *)album playingTime:(float)playingTime {
    self = super.init;
    if (self) {
        self.title = title;
        self.artist = artist;
        self.album = album;
        self.playingTime = playingTime;
    }
    return self;
}
@end
