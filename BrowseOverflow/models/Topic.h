//
//  Topic.h
//  BrowseOverflow
//
//  Created by David G Chaves on 6/5/13.
//  Copyright (c) 2013 David G Chaves. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Topic : NSObject

@property (readonly) NSString *name;
@property (readonly) NSString *tag;

-(id)initWithName:(NSString *)newName tag:(NSString *)newTag;

@end
