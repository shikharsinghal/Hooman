//
//  RescueDetailsViewController.m
//  Hooman
//
//  Created by Shikhar Singhal on 12/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import "RescueDetailsViewController.h"

@interface RescueDetailsViewController ()

@end

@implementation RescueDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thank You"
                                                    message:@"The Rescuer will send a mail regarding Request"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
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

@end
