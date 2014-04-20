//
//  EventsViewController.h
//  Edgy
//
//  Created by Charlie Jacobson on 4/19/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property UITableView* tableView;

@end
