//
//  EventMailCell.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventMailCell.h"
#import "HorizontalListView.h"
#import "MailView.h"

const static float paddingSide = 2;
const static float paddingBetween = 10;

@implementation EventMailCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		
		// title
		self.titleLabel.text = @"Emails";
		
		// background
		self.backgroundColor = [UIColor clearColor];
		
		// horizontal list view for email views
		float mailListY = self.titleLabel.frame.origin.y  + self.titleLabel.frame.size.height + 5;
		self.mailList = [[HorizontalListView alloc] initWithFrame:CGRectMake(2, mailListY, self.frame.size.width - paddingSide*2, 100)];
//		self.mailList.backgroundColor = [UIColor redColor];
		
		// dummy emails
		for (int i = 0; i < 2; i++) {
			MailView* mv = [[MailView alloc] initWithFrame:CGRectMake(0, 0, (self.frame.size.width - paddingSide*2 - paddingBetween)/2.0, 110)];
			[self.mailList addItem:mv];
		}
		[self addSubview:self.mailList];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
