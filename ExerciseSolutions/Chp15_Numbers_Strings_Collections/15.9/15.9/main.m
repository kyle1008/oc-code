//
//  main.m
//  15.9
//
//  Created by kongyunpeng on 4/6/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"
#import "Playlist.h"
#import "MusicCollection.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Song *song1 = [[Song alloc] initWithTitle:@"title1" artist:@"artist1" album:@"album1" playingTime:2.41];
        Song *song2 = [[Song alloc] initWithTitle:@"title2" artist:@"artist2" album:@"album2" playingTime:3.33];
        Song *song3 = [[Song alloc] initWithTitle:@"title3" artist:@"artist3" album:@"album3" playingTime:2.41];
        Song *song4 = [[Song alloc] initWithTitle:@"title4" artist:@"artist4" album:@"album4" playingTime:3.33];
       
        
        Playlist *playlist1 = [[Playlist alloc] initWithName:@"playlist1"];
        [playlist1 addSong:song1];
        [playlist1 addSong:song2];
        
        
        Playlist *playlist2 = [[Playlist alloc] initWithName:@"playlist2"];
        [playlist2 addSong:song3];
        [playlist2 addSong:song4];
        
        MusicCollection *myMusic = [[MusicCollection alloc] init];
        [myMusic addPlaylist:playlist1];
        [myMusic addPlaylist:playlist2];
        
        [myMusic removeSongFromLibrary:song1];
        
        
        NSLog(@"the library count:%lu",(unsigned long)[myMusic.library.songs count]);
        NSLog(@"the playlist1 count:%lu",(unsigned long)[playlist1.songs count]);
        
    }
    return 0;
}
