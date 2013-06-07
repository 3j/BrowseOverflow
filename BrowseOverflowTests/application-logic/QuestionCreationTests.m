//
//  QuestionCreationTests.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/7/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "QuestionCreationTests.h"
#import "StackOverflowManager.h"
#import "StackOverflowManagerDelegate.h"
#import "OCMock/OCMock.h"

@implementation QuestionCreationTests

- (void)setUp {
    manager = [[StackOverflowManager alloc] init];
}

- (void)tearDown {
    manager = nil;
}

- (void)testConformingObjectCanBeDelegate {
    id<StackOverflowManagerDelegate> conformingDelegate =
        [OCMockObject mockForProtocol: @protocol(StackOverflowManagerDelegate)];

    STAssertNoThrow([manager setDelegate: conformingDelegate],
                    @"Object conforming to the delegate protocol can be used as delegate");
}

- (void)testNonConformingObjectCannotBeDelegate {
    id<StackOverflowManagerDelegate> nonConformingDelegate =
        (id<StackOverflowManagerDelegate>)[NSNull null];

    STAssertThrows([manager setDelegate: nonConformingDelegate],
                   @"Object non conforming the the delegate protocol can't be used as delegate");
}

- (void)testNilCanBeDelegate {
    STAssertNoThrow([manager setDelegate: nil],
                    @"Nil conforms to the delegate protocol and can be used as delegate");
}

@end
