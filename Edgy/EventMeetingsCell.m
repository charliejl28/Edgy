//
//  EventMeetingsCell.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/21/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventMeetingsCell.h"

@implementation EventMeetingsCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		
		// background
		self.backgroundColor = [UIColor whiteColor];
		
		// title
		self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, self.frame.size.width - 40, 30)];
		self.titleLabel.text = @"Recent Meetings";
		[self addSubview:self.titleLabel];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
