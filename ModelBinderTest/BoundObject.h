//
//  BoundObject.h
//  ModelBinderTest
//
//  Created by William Barry on 8/10/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import <Foundation/Foundation.h>

// CHANGED -- Made this a forward declaration

@protocol BoundObject

- (int)modelId;

// URLs for interacting with the remote server
- (NSString *)updateUrl:(NSString *)attribute;
- (NSString *)getUrl;
- (NSString *)addUrl;
- (NSString *)deleteUrl;
- (NSString *)getVerb;
- (NSString *)addVerb;
- (NSString *)updateVerb:(NSString *)prop;
- (NSString *)deleteVerb;

// Translate local object property names to remote names
+ (NSString *)remoteName:(NSString *)prop;

// Save both locally and remotely
- (BOOL)saveValue:(id)val forProperty:(NSString *)prop;


@end
