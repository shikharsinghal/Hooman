//
//  MenuTableViewController.m
//  Hooman
//
//  Created by Shikhar Singhal on 11/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import "MenuTableViewController.h"
#import "MenuDisplayPicCell.h"

@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

{
    NSArray *menu, *share;
}

- (void)viewDidLoad {
    
    menu= @[@"Display",@"line1", @"MyRescue", @"Donate",@"line2",@"ContactUs", @"AboutUs"];
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1 ;
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [menu count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;{
        if (indexPath.row == 0) {
            return 160;
        }
        else
    if (indexPath.row == 4 || indexPath.row == 1){
        return 20;
    }else return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier;
        cellIdentifier = [menu objectAtIndex:indexPath.row];
    if (indexPath.row == 0) {
        MenuDisplayPicCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
        cell.profilePic.layer.cornerRadius = 50;
        cell.profilePic.layer.masksToBounds = YES;
    }
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
        
}

@end
