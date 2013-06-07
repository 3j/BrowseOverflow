//
//  StackOverflowManager.h
//  BrowseOverflow
//
//  Created by David G Chaves on 6/7/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowManagerDelegate.h"

@interface StackOverflowManager : NSObject

@property (weak, nonatomic) id<StackOverflowManagerDelegate> delegate;

@end
