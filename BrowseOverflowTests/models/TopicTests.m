//
//  TopicTests.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "TopicTests.h"
#import "Topic.h"

@implementation TopicTests

-(void)testThatTopicExists {
    Topic *topic = [[Topic alloc] initWithName:@"iPhone"
                                           tag:@"iPhone"];
    STAssertNotNil(topic, @"Topic should be instanciable");
}

-(void)testThatTopicCanBeNamed {
    Topic *topic = [[Topic alloc] initWithName:@"iPhone"
                                           tag:@"iPhone"];
    STAssertEqualObjects(topic.name, @"iPhone", @"Topic should have a name");
}

-(void)testThatTopicHasATag {
    Topic *topic = [[Topic alloc] initWithName:@"iPhone"
                                           tag:@"iPhone"];
    STAssertEqualObjects(topic.tag, @"iPhone", @"Topic should have tags");
}
@end
