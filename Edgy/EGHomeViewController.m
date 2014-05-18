//
//  EGHomeViewController.m
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGHomeViewController.h"
#import "Constants.h"
#import "EventsCell.h"

@interface EGHomeViewController ()

@end

typedef enum{
	HomeTableSectionCurrentEvent,
	HomeTableSectionEvents,
	HomeTableSectionEmails,
	HomeTableSectionNews,
	HomeTableSectionEditors,
}HomeTableSection;

@implementation EGHomeViewController

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
	if (self) {
		self.title = @"Home";
	}
	return self;
}

- (UIStatusBarStyle) preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	// Table View
    CGRect frame = self.view.frame;
    frame.size.height -= [[self navigationController] navigationBar].frame.size.height + self.navigationController.navigationBar.frame.origin.y;
    
	self.tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
	self.tableView.delegate = self;
	self.tableView.dataSource = self;
    self.tableView.backgroundColor = bgColor;
	self.tableView.separatorColor = [UIColor clearColor];
	
	[self.view addSubview:self.tableView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Table View Data Source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSString *fbID = @"1482513166";
    NSString *fbID2 = @"777268569";
    NSString *fbID3 = @"1380090185";
    NSString *fbID4 = @"701230424";
	
	switch (indexPath.section) {
		case HomeTableSectionCurrentEvent:{
			NSString *CellIdentifier = @"EventsCell";
			
			EventsCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
			if (cell == nil) {
				cell = [[EventsCell alloc] init];
			}
			[cell.badgeCountMeeting setHidden:YES];
			[cell.badgeCountMail setHidden:YES];
			[cell.badgeCountNews setHidden:YES];
			[cell.badgeCountNote setHidden:YES];
			
			[cell.title setText:@"Edgy Pitch"];
			[cell.location setText:@"Friend 006"];
			[cell addPersonForFacebookID:fbID4 AndName:@"JP Singh"];
			[cell addPersonForFacebookID:fbID AndName:@"Darshan"];
			[cell.badgeCountMeeting setHidden:NO];
			[cell.badgeCountMeeting setText:@"3"];
			return cell;
		}break;
		
		default:{
			NSString* CellIdentifier = @"DefaultCell";
			
			UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
			if (cell == nil) {
				cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
			}
			return cell;
		}
	}
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	switch (indexPath.section) {
		case HomeTableSectionCurrentEvent:
			return 175;
			break;
		
		default:
			return 0;
			break;
	}
}

# pragma mark - Table View Delegate

@end
