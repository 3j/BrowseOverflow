//
//  StackOverflowManager.m
//  BrowseOverflow
//
//  Created by David G Chaves on 6/7/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import "StackOverflowManager.h"

@implementation StackOverflowManager

@synthesize delegate;

- (void)setDelegate: (id<StackOverflowManagerDelegate>)newDelegate {
    if (newDelegate &&
        ![newDelegate conformsToProtocol: @protocol(StackOverflowManagerDelegate)]) {
        [[NSException exceptionWithName: NSInvalidArgumentException
                                 reason: @"Delegate object does not conform to the delegate protocol"
                               userInfo: nil]
         raise];
    }
    delegate = newDelegate;
}

@end