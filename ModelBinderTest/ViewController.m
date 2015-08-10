//
//  ViewController.m
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *d = [NSDictionary dictionaryWithObjectsAndKeys:
                       self.tfFirstName , @"first_name",
                       self.tfLastName  , @"last_name",
                       self.tfEmail     , @"email",
                       nil];
    self.mb = [[ModelBinder alloc] initWithName:@"User"
                                        modelId:23
                                        baseUrl:[NSString stringWithFormat:@"/api/users/%d", 23]
                                     attributes:d
                                 viewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
