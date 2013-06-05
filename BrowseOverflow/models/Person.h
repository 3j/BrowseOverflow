//
//  Person.h
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (readonly) NSString *name;
@property (readonly) NSURL *avatarURL;

- (id)initWithName:(NSString *)newName
    avatarLocation:(NSString *)newAvatarLocation;

@end
