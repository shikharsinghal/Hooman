//
//  ContactUsViewController.m
//  Hooman
//
//  Created by Shikhar Singhal on 12/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import "ContactUsViewController.h"

@interface ContactUsViewController ()

@end

@implementation ContactUsViewController

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
                                                    message:@"Thank you for your comments. We will process your feedback and rerevert back soon."
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
