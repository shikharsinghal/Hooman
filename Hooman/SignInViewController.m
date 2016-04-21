//
//  SignInViewController.m
//  Hooman
//
//  Created by Shikhar Singhal on 11/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)logIn:(id)sender {
    self.view.window.rootViewController = [self.view.window.rootViewController.storyboard   instantiateViewControllerWithIdentifier:@"SWRevealViewController"];
    
}
- (IBAction)newUser:(id)sender {
    self.view.window.rootViewController = [self.view.window.rootViewController.storyboard   instantiateViewControllerWithIdentifier:@"SignUpViewController"];
}
- (IBAction)forgotPass:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Password Reset"
                                                    message:@"Password link has been sent to your email account, please follow the instructions"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
