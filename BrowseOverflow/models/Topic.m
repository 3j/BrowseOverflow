//
//  Topic.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "Topic.h"

@implementation Topic

@synthesize name;
@synthesize tag;

- (id)initWithName:(NSString *)newName tag:newTag {
    if (self = [super init]) {
        name = [newName copy];
        tag = [newTag copy];
    }
    return self;
}

- (NSArray *)recentQuestions {
    return [NSArray array];
}
@end
