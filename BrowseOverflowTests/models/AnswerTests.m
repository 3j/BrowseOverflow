//
//  AnswerTests.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/6/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "AnswerTests.h"
#import "Answer.h"
#import "Person.h"

@implementation AnswerTests

- (void)setUp {
    answer = [[Answer alloc] init];
    [answer setText: @"The answer is 42"];
    [answer setPerson: [[Person alloc] initWithName: @"Graham Lee"
                                     avatarLocation: @"http://example.com/avatar.png"]];
    [answer setScore: 42];
}

- (void)tearDown {
    answer = nil;
}

- (void)testAnswerHasAssociatedText {
    STAssertEqualObjects([answer text], @"The answer is 42", @"Answer has associated text");
}

- (void)testSomeoneProvidedTheAnswer {
    STAssertTrue([[answer person] isKindOfClass: [Person class]], @"Answer has associated Person");
}

- (void)testAnswerCanBeAccepted {
    STAssertNoThrow([answer setAccepted: YES], @"Answer can be accepted");
}

- (void)testAnswersAreNotAcceptedByDefault {
    STAssertFalse([answer isAccepted], @"Answer isn't accepted by default");
}

- (void)testAnswerHasAScore {
    STAssertTrue([answer score] == 42, @"Answer has associated score");
}

- (void)testAcceptedAnswerComesBeforeUnaccepted {
    Answer *acceptedAnswer = [[Answer alloc] init];
    [acceptedAnswer setAccepted: YES];

    STAssertEquals([acceptedAnswer compare: answer], NSOrderedAscending,
                   @"Accepted answer comes first");
    STAssertEquals([answer compare: acceptedAnswer], NSOrderedDescending,
                   @"Unaccepted answer comes last");
}

- (void)testAnswersWithEqualScoresCompareEqually {
    Answer *otherAnswer = [[Answer alloc] init];
    [otherAnswer setScore: [answer score]];

    STAssertEquals([otherAnswer compare: answer], NSOrderedSame,
                   @"Answers with the same score compare equally");
    STAssertEquals([answer compare: otherAnswer], NSOrderedSame,
                   @"Answers with the same score compare equally");
}

- (void)testHigherScoringAnswerComesBeforeLower {
    Answer *higherScoreAnswer = [[Answer alloc] init];
    [higherScoreAnswer setScore: [answer score] + 20];

    STAssertEquals([higherScoreAnswer compare: answer], NSOrderedAscending,
                   @"Higher score answer comes first");
    STAssertEquals([answer compare: higherScoreAnswer], NSOrderedDescending,
                   @"Lower score answer comes last");
}
@end
