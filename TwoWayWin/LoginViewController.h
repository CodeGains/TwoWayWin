//
//  LoginViewController.h
//  TwoWayWin
//
//  Created by Troy Jaeger on 3/4/14.
//  Copyright (c) 2014 Troy Jaeger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UINavigationController

@property(nonatomic, strong) IBOutlet UITextField *usernameField;
@property(nonatomic, strong) IBOutlet UITextField *passwordField;

-(IBAction)signInButtonClicked:(UIButton*)sender;
-(IBAction)createAccountButtonClicked:(UIButton*)sender;
@end
