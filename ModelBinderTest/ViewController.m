//
//  ViewController.m
//  ModelBinderTest
//
//  Created by William Barry on 8/7/15.
//  Copyright (c) 2015 The Nine. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    User *bob = [[User alloc] init];
    bob.firstName = @"Bob";
    bob.lastName = @"Jones";
    bob.email = @"bjones@gmail.com";
    bob.userId = 23;
    
    [self.tfFirstName bindToObject:bob boundName:@"firstName"];
    [self.tfLastName bindToObject:bob boundName:@"lastName"];
    [self.tfEmail bindToObject:bob boundName:@"email"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
