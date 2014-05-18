//
//  EventMeetingsCell.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/21/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventMeetingsCell.h"
#import "MeetingView.h"

@implementation EventMeetingsCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		
		// title
		self.titleLabel.text = @"Meetings";
		
		// background
		self.backgroundColor = [UIColor clearColor];
		
		// meetings list
		float meetingsListY = self.titleLabel.frame.origin.y + self.titleLabel.frame.size.height + 5;
		self.meetingsList = [[HorizontalListView alloc] initWithFrame:CGRectMake(5, meetingsListY, self.frame.size.width, 100)];
//		self.meetingsList.backgroundColor = [UIColor redColor];
		
		for (int i = 0; i < 3; i++) {
			MeetingView* mv = [[MeetingView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
			[self.meetingsList addItem:mv];
		}
		[self addSubview:self.meetingsList];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
