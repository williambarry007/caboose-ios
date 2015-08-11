//
//  Ajax.h
//  repconnex-kiosk
//
//  Created by William Barry on 8/3/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ajax : NSObject

+ (void)get:(NSString *)url data:(NSDictionary *)data delegate:(NSObject *)d success:(SEL)s;
+ (void)post:(NSString *)url data:(NSDictionary *)data delegate:(NSObject *)d success:(SEL)s;
+ (void)put:(NSString *)url data:(NSDictionary *)data delegate:(NSObject *)d success:(SEL)s;
+ (void)delete:(NSString *)url data:(NSDictionary *)data delegate:(NSObject *)d success:(SEL)s;

@end
