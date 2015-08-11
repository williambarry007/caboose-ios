//
//  Ajax.m
//  repconnex-kiosk
//
//  Created by William Barry on 8/3/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import "Ajax.h"
#import "AFNetworking.h"

@implementation Ajax

+ (void)get:(NSString *)url data:(NSDictionary *)data delegate:(NSObject *)d success:(SEL)s
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager GET:url
      parameters:data
         success:^(AFHTTPRequestOperation *operation, id resp) { [d performSelector:s withObject:resp]; }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) { NSLog(@"Error: %@", error); }
     ];
}

+ (void)post:(NSString *)url data:(NSDictionary *)data delegate:(NSObject *)d success:(SEL)s
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager POST:url
       parameters:data
          success:^(AFHTTPRequestOperation *operation, id resp) { [d performSelector:s withObject:resp]; }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) { NSLog(@"Error: %@", error); }
     ];
}

+ (void)put:(NSString *)url data:(NSDictionary *)data delegate:(NSObject *)d success:(SEL)s
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager PUT:url
      parameters:data
         success:^(AFHTTPRequestOperation *operation, id resp) { [d performSelector:s withObject:resp]; }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) { NSLog(@"Error: %@", error); }
     ];
}

+ (void)delete:(NSString *)url data:(NSDictionary *)data delegate:(NSObject *)d success:(SEL)s
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager DELETE:url
         parameters:data
            success:^(AFHTTPRequestOperation *operation, id resp) { [d performSelector:s withObject:resp]; }
            failure:^(AFHTTPRequestOperation *operation, NSError *error) { NSLog(@"Error: %@", error); }
     ];
}

@end
