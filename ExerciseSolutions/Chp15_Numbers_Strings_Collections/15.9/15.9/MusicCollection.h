//
//  MusicCollection.h
//  15.9
//
//  Created by kongyunpeng on 4/6/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"
#import "Song.h"
@interface MusicCollection : NSObject
@property(nonatomic,strong) NSMutableArray *playlists;
@property(nonatomic,strong) Playlist *library;
-(void)addPlaylist:(Playlist *)object;
-(void)removePlaylist:(Playlist *)object;
-(void)removeSongFromLibrary:(Song *)song;
@end
