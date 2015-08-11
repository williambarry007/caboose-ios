//
//  User.h
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BoundObject.h"

@interface User : NSObject <BoundObject>

@property (nonatomic, assign) int userId;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *email;

- (void)saveValueResponse:(NSDictionary *)resp;

@end
