//
//  EventInfoCell.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventInfoCell.h"

@implementation EventInfoCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		
		// background
		self.backgroundColor = [UIColor whiteColor];
		
		// title
		self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 5, self.frame.size.width - 40, 30)];
		self.titleLabel.text = @"More Info";
		self.titleLabel.textAlignment = NSTextAlignmentCenter;
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
