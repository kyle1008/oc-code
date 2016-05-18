//
//  Playlist.m
//  15.9
//
//  Created by kongyunpeng on 4/6/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist
- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _songs = [[NSMutableArray alloc] init];
        _name = name;
    }
    return self;
}

-(void)addSong:(Song *)song {
    [_songs addObject:song];
}

-(void)removeSong:(Song *)song {
    [_songs removeObject:song];
}

-(BOOL)containsSong:(Song *)song {
    return [_songs containsObject:song];
}

-(Song *)lookupOneSong:(Song *)song {
    
    [_songs enumerateObjectsUsingBlock:^(Song *aSong,NSUInteger index,BOOL *stop){
        if ([song.title isEqualToString:aSong.title]) {
            *stop = YES;
        }
        
    }];
    
}
@end
