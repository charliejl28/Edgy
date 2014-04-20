//
//  EventAboutCell.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/19/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventAboutCell.h"
#import "Constants.h"

@implementation EventAboutCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		
		int yPos = 10;
		int xIndent = 50;
		
		// name label
		self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(xIndent, yPos, self.frame.size.width - xIndent - 10, 30)];
		self.nameLabel.font = [UIFont fontWithName:APPFONT size:16];
		self.nameLabel.text = @"Meeting with Daphne";
		[self addSubview:self.nameLabel];
		yPos += self.nameLabel.frame.size.height;
		yPos += 5;
		
		// date label
		self.dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(xIndent, yPos, self.frame.size.width - xIndent - 10, 20)];
		self.dateLabel.font = [UIFont fontWithName:APPFONT size:14];
		self.dateLabel.textColor = asbestosColor;
		self.dateLabel.text = @"Saturday, April 19, 2014";
		[self addSubview:self.dateLabel];
		yPos += self.dateLabel.frame.size.height;
		yPos += 2;
		
		// time label
		self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(xIndent, yPos, self.frame.size.width - xIndent - 10, 20)];
		self.timeLabel.font = [UIFont fontWithName:APPFONT size:14];
		self.timeLabel.textColor = asbestosColor;
		self.timeLabel.text = @"from 9:30 pm to 10:30 pm";
		[self addSubview:self.timeLabel];
		yPos += self.dateLabel.frame.size.height;
		yPos += 10;
		
		// location view
		self.locationView = [[UIView alloc] initWithFrame:CGRectMake(0, yPos, self.frame.size.width, 50)];
		self.locationView.backgroundColor = alizarinColor;
		
		// location icon
//		self.locaitonIconView = [UIView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
		
		UIImageView* iconView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 5, 25, 25)];
		[iconView setImage:[UIImage imageNamed:@"location-white.png"]];
		[self.locationView addSubview:iconView];
		
		// location time label
		self.locationTimeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 25, 50, 30)];
		self.locationTimeLabel.textColor = [UIColor whiteColor];
		self.locationTimeLabel.text = @"15 min";
		self.locationTimeLabel.font = [UIFont fontWithName:APPFONT size:12];
		[self.locationView addSubview:self.locationTimeLabel];
		
		// location text label
		self.locationLabel = [[UILabel alloc] initWithFrame:CGRectMake(xIndent + 10, 10, self.locationView.frame.size.width - 100, 30)];
		self.locationLabel.textColor = [UIColor whiteColor];
		self.locationLabel.text = @"115 Nassau St, Princeton, NJ";
		self.locationLabel.font = [UIFont fontWithName:APPFONT size:14];
		[self.locationView addSubview:self.locationLabel];

		
		// go label
		UILabel* goLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.locationView.frame.size.width - 50, 10, 40, 30)];
		goLabel.font = [UIFont fontWithName:APPFONT size:15];
		goLabel.textColor = [UIColor whiteColor];
		goLabel.text = @"Go >";
		[self.locationView addSubview:goLabel];
		
		[self addSubview:self.locationView];

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
