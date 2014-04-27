//
//  EventMailCell.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventMailCell.h"

@implementation EventMailCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		
		// title
		self.titleLabel.text = @"Emails";

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
