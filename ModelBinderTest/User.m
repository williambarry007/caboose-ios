//
//  User.m
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import "User.h"
#import "Ajax.h"

@implementation User

@synthesize userId, firstName, lastName, email;

- (NSString *)resourcePath
{
    return [NSString stringWithFormat:@"/users/%d", self.userId];
}

- (BOOL)saveProperty:(NSString *)propertyName value:(id)val
{
    [self setValue:val forKey:propertyName];
    NSString *url = [NSString stringWithFormat:@"https://repconnex.com/api/%@", self.resourcePath];
    NSDictionary *d = [NSDictionary dictionaryWithObject:val forKey:propertyName];
    [Ajax put:url data:d delegate:self success:@"savePropertyResponse:"];
    return true;
}

- (void)savePropertyResponse:(NSDictionary *)resp
{
    
}

@end
