//
//  ViewController.h
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BoundTextField.h"
#import "ModelBinder.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) ModelBinder *mb;
@property (weak, nonatomic) IBOutlet BoundTextField *tfFirstName;
@property (weak, nonatomic) IBOutlet BoundTextField *tfLastName;
@property (weak, nonatomic) IBOutlet BoundTextField *tfEmail;

@end

