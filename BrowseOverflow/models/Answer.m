//
//  Answer.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/6/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "Answer.h"

@implementation Answer

@synthesize accepted;
@synthesize score;

- (NSComparisonResult)compare:(Answer *)otherAnswer {
    if ([self isAccepted] && ![otherAnswer isAccepted]) {
        return NSOrderedAscending;
    } else if ([otherAnswer isAccepted] && ![self isAccepted]) {
        return NSOrderedDescending;
    }

    if (score > [otherAnswer score]) {
        return NSOrderedAscending;
    } else if (score == [otherAnswer score]) {
        return NSOrderedSame;
    }

    return NSOrderedDescending;
}

@end
