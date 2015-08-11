//
//  User.m
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import "User.h"
#import "Ajax.h"
#import "AppDelegate.h"

#define APPDELEGATE ((AppDelegate*)[UIApplication sharedApplication].delegate)

@implementation User

@synthesize userId, firstName, lastName, email;

- (BOOL)saveValue:(id)val forProperty:(NSString *)prop
{
    [self setValue:val forKey:prop];
    NSString *url = [NSString stringWithFormat:@"%@%@", APPDELEGATE.baseUrl, [self updateUrl:prop]];
    NSDictionary *d = [NSDictionary dictionaryWithObject:val forKey:[User remoteName:prop]];
    [Ajax put:url data:d delegate:self success:@selector(saveValueResponse:)];
    return true;
}

- (void)saveValueResponse:(NSDictionary *)resp
{
    
}

// BoundObject implementation

- (int)modelId
{
    return self.userId;
}

- (NSString *)getUrl                      { return [NSString stringWithFormat:@"/api/users/%d", self.userId]; }
- (NSString *)addUrl                      { return @"/api/users"; }
- (NSString *)updateUrl:(NSString *)prop  { return [NSString stringWithFormat:@"/api/users/%d", self.userId]; }
- (NSString *)deleteUrl                   { return [NSString stringWithFormat:@"/api/users/%d", self.userId]; }

- (NSString *)getVerb                     { return @"get"; }
- (NSString *)addVerb                     { return @"post"; }
- (NSString *)updateVerb:(NSString *)prop { return @"put"; }
- (NSString *)deleteVerb                  { return @"delete"; }

+ (NSString *)remoteName:(NSString *)prop
{
    if ([prop isEqualToString:@"firstName"]) return @"first_name";
    if ([prop isEqualToString:@"lastName"]) return @"last_name";
    if ([prop isEqualToString:@"email"]) return @"email";
    return @"";
}

@end
