//
//  MainViewController.m
//  FormSheetTest
//
//  Created by Daniel Skates on 19/11/12.
//  Copyright (c) 2012 Daniel Skates. All rights reserved.
//

#import "MainViewController.h"
#import "LoginViewController.h"

@interface MainViewController () {
    LoginViewController *_loginVC;
}

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated {
    _loginVC = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    _loginVC.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:_loginVC animated:YES completion:^{
        
    }];
}

-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}


@end
