//
//  PersonTests.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "PersonTests.h"
#import "Person.h"

@implementation PersonTests

- (void)setUp {
    person = [[Person alloc] initWithName: @"Graham Lee"
                           avatarLocation: @"http://example.com/avatar.png"];
}

- (void) tearDown {
    person = nil;
}

- (void)testThatPersonHasAName {
    STAssertEqualObjects([person name], @"Graham Lee", @"Person has a name");
}

- (void)testThatPersonHasAnAvatar {
    STAssertEqualObjects([[person avatarURL] absoluteString],
                         @"http://example.com/avatar.png",
                         @"Person has an URL link to an avatar");
}
@end
