//
//  Question.h
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (readwrite) NSDate *date;
@property (readwrite) NSInteger score;
@property (readwrite) NSString *title;

@end
