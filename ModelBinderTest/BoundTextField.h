//
//  BoundTextField.h
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModelBinder.h"
#import "BoundControl.h"

@interface BoundTextField : UITextField <BoundControl>

@property (nonatomic, strong) id boundObject;
@property (nonatomic, strong) NSString *boundProperty;
@property (nonatomic, strong) NSString *remoteName;
@property (nonatomic, strong) NSString *updateUrl;

@end
