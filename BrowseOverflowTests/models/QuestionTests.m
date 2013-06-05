//
//  QuestionTests.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "QuestionTests.h"
#import "Question.h"

@implementation QuestionTests

- (void)testQuestionHasACreationDate {
    Question *question = [[Question alloc] init];
    NSDate *creationDate = [NSDate distantPast];
    question.date = creationDate;

    STAssertTrue([question.date isKindOfClass:[NSDate class]],
                 @"Question has a creation date");
}

- (void)testQuestionKeepsScore {
    Question *question = [[Question alloc] init];
    question.score = 42;
    STAssertEquals(question.score, 42, @"Question keeps a score");
}

- (void)testQuestionHasATitle {
    Question *question = [[Question alloc] init];
    question.title = @"Do iphones also dream of electric sheep";
    STAssertEquals(question.title, @"Do iphones also dream of electric sheep",
                   @"Question has a title");
}

@end
