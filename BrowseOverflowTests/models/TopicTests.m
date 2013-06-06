//
//  TopicTests.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "TopicTests.h"
#import "Topic.h"
#import "Question.h"

@implementation TopicTests

- (void)setUp {
    topic = [[Topic alloc] initWithName:@"iPhone"
                                    tag:@"iPhone"];
}

- (void)tearDown {
    topic = nil;
}

- (void)testThatTopicExists {
    STAssertNotNil(topic, @"Topic is instanciable");
}

- (void)testThatTopicCanBeNamed {
    STAssertEqualObjects(topic.name, @"iPhone", @"Topic has a name");
}

- (void)testThatTopicHasATag {
    STAssertEqualObjects(topic.tag, @"iPhone", @"Topic has a tag");
}

- (void)testForAListOfQuestions {
    STAssertTrue([[topic recentQuestions] isKindOfClass:[NSArray class]],
                  @"Topic provides a list of recent questions");
}

- (void)testForInitiallyEmptyQuestionList {
    STAssertEquals([[topic recentQuestions] count], (NSUInteger)0,
                   @"Topic provides an empty list of recent questions if there are no questions");
}

- (void)testAddingAQuestionToTheList {
    Question *question = [[Question alloc] init];
    [topic addQuestion:question];

    STAssertEquals([[topic recentQuestions] count], (NSUInteger)1,
                   @"Topic provides a list of 1 recent question if there is only 1 question");
}

- (void)testQuestionsAreListedChronologically {
    Question *pastQuestion = [[Question alloc] init];
    pastQuestion.date = [NSDate distantPast];
    Question *futureQuestion = [[Question alloc] init];
    futureQuestion.date = [NSDate distantFuture];
    [topic addQuestion: pastQuestion];
    [topic addQuestion: futureQuestion];

    NSArray *questions = [topic recentQuestions];

    Question *listedFirstQuestion = [questions objectAtIndex:0];
    Question *listedSecondQuestion = [questions objectAtIndex:1];
    STAssertEqualObjects([listedFirstQuestion.date laterDate:listedSecondQuestion.date],
                         listedFirstQuestion.date,
                         @"Topic provides later questions first");
}

@end
