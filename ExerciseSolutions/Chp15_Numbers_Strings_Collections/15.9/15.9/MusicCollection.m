//
//  MusicCollection.m
//  15.9
//
//  Created by kongyunpeng on 4/6/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "MusicCollection.h"

@implementation MusicCollection

- (instancetype)init
{
    self = [super init];
    if (self) {
        _playlists = [NSMutableArray array];
        _library = [[Playlist alloc] initWithName:@"library"];
        [_playlists addObject:_library];
    }
    return self;
}

-(void)removeSongFromLibrary:(Song *)song {
    [_library removeSong:song];
    if (_playlists.count != 0) {
        for (Playlist *list in _playlists) {
            if ([list containsSong:song]) {
              [list removeSong:song];
            }
        }
    }
}

-(void)addPlaylist:(Playlist *)playlist{
    [_playlists addObject:playlist];
    for (Song *song in playlist.songs) {
        if(![_library containsSong:song]) {
            [_library addSong:song];
        }
    }
    
}
-(void)removePlaylist:(Playlist *)playlist{
    [_playlists removeObject:playlist];
}

@end
