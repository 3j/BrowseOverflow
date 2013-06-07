//
//  QuestionTests.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "QuestionTests.h"
#import "Question.h"
#import "Answer.h"

@implementation QuestionTests

- (void)setUp {
    question = [[Question alloc] init];
    [question setDate: [NSDate distantPast]];
    [question setScore: 42];
    [question setTitle: @"Do iphones also dream of electric sheep"];

    acceptedAnswer = [[Answer alloc] init];
    [acceptedAnswer setScore: 1],
    [acceptedAnswer setAccepted: YES];
    [question addAnswer: acceptedAnswer];

    lowScoreAnswer = [[Answer alloc] init];
    [lowScoreAnswer setScore: -10];
    [question addAnswer: lowScoreAnswer];

    highScoreAnswer = [[Answer alloc] init];
    [highScoreAnswer setScore: 20];
    [question addAnswer: highScoreAnswer];
}

- (void)tearDown {
    question = nil;
    acceptedAnswer = nil;
    lowScoreAnswer = nil;
    highScoreAnswer = nil;
}

- (void)testQuestionHasACreationDate {
    STAssertTrue([[question date] isKindOfClass: [NSDate class]],
                 @"Question has a creation date");
}

- (void)testQuestionKeepsScore {
    STAssertEquals([question score], 42, @"Question keeps a score");
}

- (void)testQuestionHasATitle {
    STAssertEquals([question title], @"Do iphones also dream of electric sheep",
                   @"Question has a title");
}

- (void)testQuestionCanHaveAnswersAdded {
    Answer *answer = [[Answer alloc] init];
    STAssertNoThrow([question addAnswer: answer], @"Question can have anwsers added");
}

- (void)testAcceptedAnswerComesFirst {
    STAssertTrue([[[question answers] objectAtIndex: 0] isAccepted],
                 @"Accepted answer comes first");
}

- (void)testHighScoreAnswerComesBeforeLow {
    NSInteger highIndex = [[question answers] indexOfObject: highScoreAnswer];
    NSInteger lowIndex = [[question answers] indexOfObject: lowScoreAnswer];
    STAssertTrue(highIndex < lowIndex, @"Higher score answers come first");
}

@end
