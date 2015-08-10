//
//  ModelBinder.m
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import "ModelBinder.h"
#import <UIKit/UIKit.h>
#import "BoundControl.h"

@implementation ModelBinder

@synthesize name, modelId, baseUrl, attributes, vc;

- (id)initWithName:(NSString *)mName modelId:(int)mId baseUrl:(NSString *)url attributes:(NSDictionary *)d viewController:(UIViewController *)viewController;
{
    self.name = mName;
    self.modelId = mId;
    self.baseUrl = url;
    self.attributes = d;
    self.vc = viewController;

    for (id key in self.attributes)
    {
        NSObject <BoundControl> *bc = (NSObject <BoundControl> *)[self.attributes objectForKey:key];
        bc.modelBinder = self;
        bc.setEvents;
    }
    
    return self;
}
- (void)textFieldDidChange:(BoundTextField *)tf
{
    
}

- (void)populate
{
    
}

@end
