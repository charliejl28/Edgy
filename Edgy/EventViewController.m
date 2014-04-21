//
//  EventViewController.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/19/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventViewController.h"
#import "Constants.h"
#import "EventAboutCell.h"
#import "EventPeopleCell.h"

@interface EventViewController ()

@end

typedef enum {
	EventTableSectionAbout,
	EventTableSectionPeople,
	EventTableSectionMeetings,
	EventTableSectionMail,
	EventTableSectionNotes,
	EventTableSectionNews,
}EventTableSection;

@implementation EventViewController

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
		self.title = @"Info";
	}
	return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	// table view
	CGRect frame = self.view.frame;
	frame.size.height -= self.navigationController.navigationBar.frame.origin.y;
	frame.size.height -= self.navigationController.navigationBar.frame.size.height;
	
	self.tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
	self.tableView.delegate = self;
	self.tableView.dataSource = self;
	self.tableView.backgroundColor = silverColor;
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
	return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	switch (indexPath.section) {
		case EventTableSectionAbout:{
			NSString *CellIdentifier = @"EventAboutCell";
			
			EventAboutCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
			if (cell == nil) {
				cell = [[EventAboutCell alloc] init];
			}
			return cell;
		}break;
			
		case EventTableSectionPeople:{
			NSString *CellIdentifier = @"EventPeopleCell";
			
			EventPeopleCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
			if (cell == nil) {
				cell = [[EventPeopleCell alloc] init];
			}
			return cell;
		}break;
			
		case EventTableSectionMeetings:{
			
		}break;
			
		case EventTableSectionMail:{
			
		}break;
			
		case EventTableSectionNotes:{
			
		}break;
			
		case EventTableSectionNews:{
			
		}break;
			
		default:
			break;
	}

	return nil;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	switch (indexPath.section) {
		case EventTableSectionAbout:
			return 145;
			break;
			
		case EventTableSectionPeople:
			return 120;
			
		default:
			break;
	}
	return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
	return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
	return 20;
}

// clear headers and footers
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
	UIView* view = [[UIView alloc] initWithFrame:CGRectZero];
	view.backgroundColor = [UIColor clearColor];
	return view;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
	UIView* view = [[UIView alloc] initWithFrame:CGRectZero];
	view.backgroundColor = [UIColor clearColor];
	return view;
}

# pragma mark - Table View Delegate


@end