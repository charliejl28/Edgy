//
//  MeetingListView.m
//  Edgy
//
//  Created by Darshan Desai on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "MeetingView.h"
#import "Constants.h"
#import <QuartzCore/QuartzCore.h>

@implementation MeetingView
@synthesize titleLabel, locationLabel, calendarDate, calendarMonth;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
		// starting values
        float yPos = 5;
        float xPos = 0;
        float width = frame.size.width;
        
		// horizontal sizing
        float calendarWidth = width/2;
        float calendarLeftOffset = (width - calendarWidth)/2;
		
		// vertical sizing
        float calendarHeight = frame.size.height/2.0;
		float calendarTopHeight = calendarHeight/3.0;
        float calendarBottomHeight = calendarHeight*2/3.0;

		// border
		[self.layer setBorderColor:borderColor.CGColor];
        [self.layer setBorderWidth:1];
		
		// background
		self.backgroundColor = [UIColor whiteColor];
		
		// calendar icon
        UIView *calendarOuter = [[UIView alloc] initWithFrame:CGRectMake(calendarLeftOffset, yPos, calendarWidth, calendarHeight)];
        
		// month
        calendarMonth = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, calendarWidth, calendarTopHeight)];
        [calendarMonth setFont:[UIFont fontWithName:APPFONT size:10]];
        [calendarMonth setTextColor:darkGray];
        [calendarMonth setBackgroundColor:cloudsColor];
        [calendarMonth setTextAlignment:NSTextAlignmentCenter];
        [calendarMonth setText:@"May"];
        
        // day
        calendarDate = [[UILabel alloc] initWithFrame:CGRectMake(0, calendarTopHeight, calendarWidth, calendarBottomHeight)];
        [calendarDate setFont:[UIFont fontWithName:APPFONT size:15]];
        [calendarDate setTextColor:darkGray];
        [calendarDate setBackgroundColor:[UIColor whiteColor]];
        [calendarDate setTextAlignment:NSTextAlignmentCenter];
        [calendarDate setText:@"13"];
        
        [calendarOuter addSubview:calendarMonth];
        [calendarOuter addSubview:calendarDate];
        
        [calendarOuter.layer setBorderColor:darkGray.CGColor];
        [calendarOuter.layer setBorderWidth:1.5f];
        [self addSubview:calendarOuter];

        // bottom half: text descriptions
        yPos += calendarHeight;
        float bottomSectionHeight = frame.size.height - yPos;
		float titleHeight = bottomSectionHeight*2/3.0;
		float locationHeight = bottomSectionHeight/3.0;
		
		// event title
         titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, titleHeight)];
        [titleLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [titleLabel setTextColor:darkGray];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setText:@"Past Meeting"];
        [self addSubview:titleLabel];
        yPos += titleHeight;
		
		// event location
        locationLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, locationHeight)];
        [locationLabel setFont:[UIFont fontWithName:APPFONT size:12]];
        [locationLabel setTextColor:asbestosColor];
        [locationLabel setTextAlignment:NSTextAlignmentCenter];
        [locationLabel setBackgroundColor:[UIColor clearColor]];

        [locationLabel setText:@"Past Location"];
        [self addSubview:locationLabel];
        yPos += locationHeight;

        
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
