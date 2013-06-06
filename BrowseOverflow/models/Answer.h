//
//  Answer.h
//  BrowseOverflow
//
//  Created by David G Chaves on 6/6/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Answer : NSObject

@property (readwrite) NSString *text;
@property (readwrite) Person *person;
@property (readwrite) BOOL accepted;
@property (readwrite) NSInteger score;

@end
