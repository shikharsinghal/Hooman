//
//  AdoptionViewController.m
//  Hooman
//
//  Created by Shikhar Singhal on 11/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import "AdoptionViewController.h"

@interface AdoptionViewController ()

@end

@implementation AdoptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)requestAdoption:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Rescue Requested"
                                                    message:@"Thank You for Showing interest in Ticky! Your details have been shared with the respective NGO. We ar confident that this decision will improve Ticky's life. Please contact: xyz NGO                                                     Address: Rohini, New Delhi Email: xyz_dog@gmail.com Ph No.: 9999999999"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
