//
//  MailView.m
//  Edgy
//
//  Created by Darshan Desai on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "MailView.h"
#import "Constants.h"
@implementation MailView
@synthesize fromLabel, timeLabel, previewLabel, subjectLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        float yPos = 5;
        float xPos = 5;
        float width = self.frame.size.width - xPos*2;
        		
		// vertical sizing
		float previewHeight = frame.size.height*.4;
		float fromHeight = frame.size.height*.2;
		float subjectHeight = frame.size.height*.2;
		float dateHeight = frame.size.height*.2;
		
		// border
		[self.layer setBorderColor:borderColor.CGColor];
        [self.layer setBorderWidth:1];
		
		// background
		self.backgroundColor = [UIColor whiteColor];
        
		// from label
		self.fromLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, fromHeight)];
        [self.fromLabel setFont:[UIFont fontWithName:APPFONT_Bold size:14]];
        [self.fromLabel setTextColor:darkGray];
        [self.fromLabel setBackgroundColor:[UIColor clearColor]];
        [self.fromLabel setTextAlignment:NSTextAlignmentLeft];
        [self.fromLabel setText:@"Charlie Jacobson"];
		[self addSubview:self.fromLabel];
		yPos += fromHeight;
		
		// subject label
        subjectLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, subjectHeight)];
        [subjectLabel setFont:[UIFont fontWithName:APPFONT size:13]];
        [subjectLabel setTextColor:darkGray];
        [subjectLabel setTextAlignment:NSTextAlignmentLeft];
        [subjectLabel setBackgroundColor:[UIColor clearColor]];
        [subjectLabel setText:@"Final Edgy Slides"];
        [self addSubview:subjectLabel];
		yPos += subjectHeight;
		
		// preview label
		previewLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, previewHeight)];
        [previewLabel setFont:[UIFont fontWithName:APPFONT size:13]];
        [previewLabel setTextColor:darkGray];
        [previewLabel setTextAlignment:NSTextAlignmentLeft];
        [previewLabel setBackgroundColor:[UIColor clearColor]];
		[previewLabel setNumberOfLines:2];
        [previewLabel setText:@"Hey Darsh! Here are the final slides for tomorrow's pitch. Super pumped. SF here we come."];
        [self addSubview:previewLabel];
        yPos += previewHeight;
		
		// time label
		timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos-2, width, dateHeight)];
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
