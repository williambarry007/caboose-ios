//
//  BoundTextField.m
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import "BoundTextField.h"

@implementation BoundTextField

@synthesize boundObject, boundProperty;

- (void)fieldEditingChanged:(id)sender {
    [self sendActionsForControlEvents:UIControlEventEditingChanged];
    [self pushToBoundObject];
}

- (void)pullFromBoundObject {
    self.text = [self.boundObject valueForKey:self.boundProperty];
}

- (void)pushToBoundObject {
    [self.boundObject setValue:self.textField.text forKey:self.boundProperty];
}

- (void)setEvents
{
    [self addTarget:self action:@selector(textFieldDidAppear) forControlEvents:UIControlEvent
    [self addTarget:self action:@selector(textFieldDidChange) forControlEvents:UIControlEventEditingChanged];
}

- (void)textFieldDidChange:(BoundTextField *)tf
{
    
    
}

@end
