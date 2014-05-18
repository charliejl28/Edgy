//
//  NotesView.m
//  Edgy
//
//  Created by Darshan Desai on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "NotesView.h"
#import "Constants.h"
@implementation NotesView
@synthesize icon;
@synthesize titleLabel, timeLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
		
		// starting values
        float yPos = 5;
        float xPos = 5;
        float width = self.frame.size.width-xPos*2;
        
		// vertical spacing
		float iconHeight = frame.size.height*.6;
		float iconPadding = 3;
		iconHeight -= iconPadding*2;
		float subjectHeight = frame.size.height*.2;
		float dateHeight = frame.size.height*.2;
		
		// horizontal spacing
		float iconWidth = frame.size.width/2.0;
		float iconX = (frame.size.width-iconWidth)/2.0;
		
		// border
		[self.layer setBorderColor:borderColor.CGColor];
        [self.layer setBorderWidth:1];
		
		// background
		self.backgroundColor = [UIColor whiteColor];
		
		// icon
//		UIView* iconPlaceholder = [[UIView alloc] initWithFrame:CGRectMake(iconX, yPos, iconWidth, iconHeight)];
//		[iconPlaceholder.layer setBorderColor:[UIColor blackColor].CGColor];
//		[iconPlaceholder.layer setBorderWidth:1];
//		[self addSubview:iconPlaceholder];
//		yPos += iconHeight;
//		yPos += iconPadding;
		
        self.icon = [[UIImageView alloc] initWithFrame:CGRectMake(iconX, yPos, iconWidth, iconHeight)];
        UIImage *notesIcon = [UIImage imageNamed:@"notes.png"];
        [self.icon setImage:notesIcon];
		[self addSubview:self.icon];
        yPos += iconHeight;
		yPos += iconPadding;
		
        // subject
		titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, subjectHeight)];
        [titleLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [titleLabel setTextColor:darkGray];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setText:@"Pitch Planning"];
        [self addSubview:titleLabel];
		yPos += subjectHeight;
        
        // time
        timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, dateHeight)];
        [timeLabel setFont:[UIFont fontWithName:APPFONT size:11]];
        [timeLabel setTextColor:alizarinColor];
        [timeLabel setTextAlignment:NSTextAlignmentCenter];
        [timeLabel setBackgroundColor:[UIColor clearColor]];
        [timeLabel setText:@"Yesterday"];
        [self addSubview:timeLabel];
        
        
    }
    return self;
}

@end
