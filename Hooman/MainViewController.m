//
//  MainViewController.m
//  Hooman
//
//  Created by Shikhar Singhal on 11/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import "MainViewController.h"
#import "SWRevealViewController.h"
#import "RescueViewController.h"
#import "AdoptionTableViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        _sideBarButton.target = self.revealViewController;
        
        _sideBarButton.action = @selector(revealToggle:);
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        [self.view addGestureRecognizer:self.revealViewController.tapGestureRecognizer];
        
        
        self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
        self.pageViewController.dataSource = self;
        self.pageViewController.delegate = self;
        RescueViewController *rescueViewController = (RescueViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"RescueViewController"];
        
        NSArray *viewControllers = @[rescueViewController];
        [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
        
        // Change the size of page view controller
        self.pageViewController.view.frame = CGRectMake(0, _rescueButton.frame.origin.y+_rescueButton.frame.size.height, self.view.frame.size.width, self.view.frame.size.height - (_rescueButton.frame.origin.y+ _rescueButton.frame.size.height));
        
        [self addChildViewController:_pageViewController];
        [self.view addSubview:_pageViewController.view];
        [self.pageViewController didMoveToParentViewController:self];
    }
    // Do any additional setup after loading the view.
UITapGestureRecognizer *rescueTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(turnBack)];
[_rescueButton addGestureRecognizer:rescueTap];
_rescueButton.userInteractionEnabled = YES;

UITapGestureRecognizer *adoptTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(turnForward)];
[_adoptButton addGestureRecognizer:adoptTap];
_adoptButton.userInteractionEnabled = YES;
// Do any additional setup after loading the view.
}

- (void) turnBack {
    if ([[self.pageViewController.viewControllers lastObject] isKindOfClass:[RescueViewController class]]) {
        
        
    }else {
                RescueViewController *rescueViewController = (RescueViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"RescueViewController"];
        NSArray *viewControllers = @[rescueViewController];
        [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:nil];
    }
}

- (void) turnForward {
    if ([[self.pageViewController.viewControllers lastObject] isKindOfClass:[AdoptionTableViewController class]]) {
        
        
    }else {
        
        
        AdoptionTableViewController *adoptionTableViewController = (AdoptionTableViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"AdoptionTableViewController"];
        NSArray *viewControllers = @[adoptionTableViewController];
        [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];

    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    if ([viewController isKindOfClass:[AdoptionTableViewController class]]) {
        RescueViewController *rescueViewController = (RescueViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"RescueViewController"];
        return  rescueViewController;
        
    }
    else return nil;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    if ([viewController isKindOfClass:[RescueViewController class]]) {
        AdoptionTableViewController *adoptionTableViewController = (AdoptionTableViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"AdoptionTableViewController"];
        return  adoptionTableViewController;
        
    }
    else return nil;
}

- (void)pageViewController:(UIPageViewController *)pvc didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray *)previousViewControllers transitionCompleted:(BOOL)completed
{
    
    
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
