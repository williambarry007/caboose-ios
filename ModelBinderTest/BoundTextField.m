//
//  BoundTextField.m
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import "BoundObject.h"
#import "BoundTextField.h"
#import "Ajax.h"

@implementation BoundTextField

// CHANGED -- Now synthesizing modelBinder
@synthesize boundObject, boundName;

- (void)bindToObject:(NSObject<BoundObject> *)obj boundName:(NSString *)name
{
    self.boundObject = obj;
    self.boundName = name;
    [self addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingDidEnd];
}

- (void)textFieldDidChange:(BoundTextField *)tf
{
    [self.boundObject saveValue:self.text forProperty:self.boundName];
}

@end
