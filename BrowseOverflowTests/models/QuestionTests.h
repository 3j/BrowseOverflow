//
//  QuestionTests.h
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@class Question;
@class Answer;

@interface QuestionTests : SenTestCase {
    Question *question;
    Answer *acceptedAnswer;
    Answer *lowScoreAnswer;
    Answer *highScoreAnswer;
}

@end
