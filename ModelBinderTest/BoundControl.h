//
//  BoundControl.h
//  ModelBinderTest
//
//  Created by William Barry on 8/10/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModelBinder.h"

@protocol BoundControl

@property (nonatomic, strong) ModelBinder *modelBinder;

-(void)setEvents;

@end
