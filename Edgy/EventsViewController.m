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
#import "EventViewController.h"

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
    NSString *fbID = @"1482513166";
    NSString *fbID2 = @"777268569";
    NSString *fbID3 = @"1380090185";
    NSString *fbID4 = @"701230424";
    [cell.badgeCountMeeting setHidden:YES];
    [cell.badgeCountMail setHidden:YES];
    [cell.badgeCountNews setHidden:YES];
    [cell.badgeCountNote setHidden:YES];

    if (indexPath.row == 0){
        [cell.title setText:@"Meeting with Daphne"];
        [cell.location setText:@"Small World Coffee"];

        [cell addPersonForFacebookID:fbID4 AndName:@"Darshan"];
        [cell addPersonForFacebookID:fbID AndName:@"Darshan"];
        [cell.badgeCountMeeting setHidden:NO];
        [cell.badgeCountMeeting setText:@"6"];

    }
    else if (indexPath.row == 1){
 
        [cell.title setText:@"COS 448 Lecture"];
        [cell.location setText:@"Friend 104"];
        [cell.startTimeLabel setText:@"11:00 AM"];
        [cell.durationLabel setText:@"1:20 Min"];

        [cell addPersonForFacebookID:fbID AndName:@"Darshan"];
        [cell addPersonForFacebookID:fbID2 AndName:@"Nick"];
        [cell addPersonForFacebookID:fbID3 AndName:@"Charlie"];
        [cell.badgeCountNote setHidden:NO];
        [cell.badgeCountNote setText:@"14"];
        

    }

    else if (indexPath.row == 2){
        [cell.title setText:@"Meeting with Benchmark"];
        [cell.location setText:@"Sand Hill Road"];
        [cell.startTimeLabel setText:@"1:00 PM"];
        [cell.durationLabel setText:@"4 Hours"];

        [cell addPersonForFacebookID:fbID AndName:@"Darshan"];
        [cell addPersonForFacebookID:fbID2 AndName:@"Nick"];
        [cell addPersonForFacebookID:fbID3 AndName:@"Charlie"];
        [cell.badgeCountNews setHidden:NO];
        [cell.badgeCountNews setText:@"3"];
        
     
    }
    else if (indexPath.row == 3){
        [cell.title setText:@"Meeting with Google PM"];
        [cell.location setText:@"GooglePlex"];
        [cell.startTimeLabel setText:@"3:45 PM"];
        [cell.durationLabel setText:@"1 Hour"];


        [cell addPersonForFacebookID:fbID2 AndName:@"Nick"];
        [cell addPersonForFacebookID:fbID3 AndName:@"Charlie"];
    }
    else if (indexPath.row == 4){
        [cell.title setText:@"Coffee with Jonathan"];
        [cell.startTimeLabel setText:@"7:30 PM"];
        [cell.durationLabel setText:@"30 Min"];

        [cell addPersonForFacebookID:fbID3 AndName:@"Nick"];
        [cell.badgeCountMeeting setHidden:NO];
        [cell.badgeCountMeeting setText:@"1"];
    }
    else {
        [cell.title setText:@"Lunch with Eliza"];
        [cell.location setText:@"Michael Jordan's Steak House"];

        [cell addPersonForFacebookID:fbID4 AndName:@"Darshan"];
        [cell addPersonForFacebookID:fbID AndName:@"Darshan"];
        [cell addPersonForFacebookID:fbID2 AndName:@"Nick"];
        [cell addPersonForFacebookID:fbID3 AndName:@"Charlie"];
        [cell.badgeCountMail setHidden:NO];
        [cell.badgeCountMail setText:@"3"];
    }

	return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 175;
}

# pragma mark - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	EventViewController* eventVC = [[EventViewController alloc] init];
	[self.navigationController pushViewController:eventVC animated:YES];
}

@end
