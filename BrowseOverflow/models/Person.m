//
//  Person.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name;
@synthesize avatarURL;

- (id)initWithName: (NSString *)newName
    avatarLocation: (NSString *)newAvatarLocation {
    if (self = [super init]) {
        name = newName;
        avatarURL = [[NSURL alloc] initWithString: newAvatarLocation];
    }
    return self;
}

@end
