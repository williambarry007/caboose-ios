//
//  BoundControl.h
//  ModelBinderTest
//
//  Created by William Barry on 8/10/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import <Foundation/Foundation.h>

// CHANGED -- Made this a forward declaration
#import "BoundObject.h"

@protocol BoundControl

@property (nonatomic, strong) id boundObject;
@property (nonatomic, strong) NSString *boundName;

- (void)bindToObject:(NSObject <BoundObject>*)obj boundName:(NSString *)name;

@end
