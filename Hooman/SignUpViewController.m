//
//  SignUpViewController.m
//  Hooman
//
//  Created by Shikhar Singhal on 11/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addAccount:(id)sender {
    self.view.window.rootViewController = [self.view.window.rootViewController.storyboard   instantiateViewControllerWithIdentifier:@"SWRevealViewController"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)CreateAccount:(id)sender {
}

@end
