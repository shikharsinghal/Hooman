//
//  MainViewController.h
//  Hooman
//
//  Created by Shikhar Singhal on 11/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate>
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sideBarButton;
@property (weak, nonatomic) IBOutlet UIButton *adoptButton;
@property (weak, nonatomic) IBOutlet UIButton *rescueButton;

@end
