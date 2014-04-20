//
//  EventsViewController.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/19/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventsViewController.h"
#import "EventsCell.h"
#import "Constants.h"


@implementation EventsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
	
- (id)init
{
	self = [super init];
	if (self ) {
		self.title = @"Events";
	}
	return self;
}

- (UIStatusBarStyle) preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];

    // Do any additional setup after loading the view from its nib.

	// Background

	// Table View
    CGRect frame = self.view.frame;
    frame.size.height -= [[self navigationController] navigationBar].frame.size.height + self.navigationController.navigationBar.frame.origin.y;
    
	self.tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
	self.tableView.delegate = self;
	self.tableView.dataSource = self;
    self.tableView.backgroundColor = bgColor;

	[self.view addSubview:self.tableView];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
	
# pragma mark - Table View Data
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}
	
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 5;
}

	
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = @"EventsCell";
    
    EventsCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[EventsCell alloc] init];
    }
    [cell.title setText:@"Meeting with Daphne"];
    NSString *fbID = @"1482513166";
    [cell addPersonForFacebookID:fbID AndName:@"Darshan"];
    NSString *fbID2 = @"777268569";
    [cell addPersonForFacebookID:fbID2 AndName:@"Charlie"];

	return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 175;
}

# pragma mark - Table View Delegate

@end
