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

- (void)setUp {
    topic = [[Topic alloc] initWithName:@"iPhone"
                                    tag:@"iPhone"];
}

- (void)tearDown {
    topic = nil;
}

- (void)testThatTopicExists {
    STAssertNotNil(topic, @"Topic should be instanciable");
}

- (void)testThatTopicCanBeNamed {
    STAssertEqualObjects(topic.name, @"iPhone", @"Topic should have a name");
}

- (void)testThatTopicHasATag {
    STAssertEqualObjects(topic.tag, @"iPhone", @"Topic should have tags");
}
@end
