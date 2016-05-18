//
//  Playlist.h
//  15.9
//
//  Created by kongyunpeng on 4/6/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"
@interface Playlist : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,strong)NSMutableArray *songs;

-(instancetype)initWithName:(NSString *)name;
-(void)addSong:(Song *)song;
-(void)removeSong:(Song *)song;
-(BOOL)containsSong:(Song *)song;
@end
