//
//  ModelBinder.h
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BoundTextField.h"

@interface ModelBinder : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int modelId;
@property (nonatomic, strong) NSString *baseUrl;
@property (nonatomic, strong) NSDictionary *attributes;
@property (nonatomic, weak) UIViewController *vc;

- (id)initWithName:(NSString *)mMame modelId:(int)mId baseUrl:(NSString *)url attributes:(NSDictionary *)d viewController:(UIViewController *)viewController;
- (void)textFieldDidChange:(BoundTextField *)tf;

@end
