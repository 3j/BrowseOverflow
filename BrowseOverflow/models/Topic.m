//
//  Topic.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "Topic.h"
#import "Question.h"

@implementation Topic {
    NSArray *questions;
}

@synthesize name;
@synthesize tag;

- (id)initWithName:(NSString *)newName tag:(NSString *)newTag {
    if (self = [super init]) {
        name = [newName copy];
        tag = [newTag copy];
        questions = [[NSArray alloc] init];
    }
    return self;
}

- (NSArray *)recentQuestions {
    return [questions sortedArrayUsingComparator:^NSComparisonResult(id object1, id object2) {
        Question *question1 = (Question *)object1;
        Question *question2 = (Question *)object2;
        return [question2.date compare:question1.date];
    }];
}

- (void)addQuestion:(Question *)question {
    questions = [questions arrayByAddingObject: question];
}
@end
