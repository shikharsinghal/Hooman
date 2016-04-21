//
//  MyRescuesViewController.h
//  Hooman
//
//  Created by Shikhar Singhal on 12/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyRescuesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate >
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
