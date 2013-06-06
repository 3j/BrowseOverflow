//
//  Question.h
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Answer;

@interface Question : NSObject {
    NSMutableSet *answerSet;
}

@property (retain) NSDate *date;
@property NSInteger score;
@property (copy) NSString *title;
@property (readonly) NSArray *answers;

- (void)addAnswer: (Answer *)answer;

@end
