//
//  EventPeopleCell.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/20/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventPeopleCell.h"
#import "Constants.h"

@implementation EventPeopleCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		
		self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, self.frame.size.width - 40, 35)];
		self.titleLabel.text = @"People Attending";
		self.titleLabel.textAlignment = NSTextAlignmentCenter;
		self.titleLabel.font = [UIFont fontWithName:APPFONT size:16];
		[self addSubview:self.titleLabel];
		
		self.peopleListView = [[PeopleListView alloc] initWithFrame:CGRectMake(20, 55, self.frame.size.width - 10, 45) AndPeopleSize:35];
		self.peopleListView.horizontalSpacing = 10;
		NSString *fbID = @"1482513166";
		[self.peopleListView addPersonForFacebookID:fbID AndName:@"Darshan"];
		NSString *fbID2 = @"777268569";
		[self.peopleListView addPersonForFacebookID:fbID2 AndName:@"Charlie"];
		[self addSubview:self.peopleListView];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
