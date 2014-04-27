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
@synthesize titleLabel, timeLabel, locationLabel, calendarDate, calendarMonth;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        float yPos = 5;
        float xPos = 0;
        float width = self.frame.size.width;
        
        float calendarWidth = 2* (width/3);
        float calendarLeftOffset = (width - calendarWidth)/2;
        
        float calendarTopHeight = 10;
        float calendarBottomHeight = 30;
        float calendarHeight = calendarTopHeight + calendarBottomHeight;

        UIView *calendarOuter = [[UIView alloc] initWithFrame:CGRectMake(calendarLeftOffset, yPos, calendarWidth, calendarHeight)];
        
        calendarMonth = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, calendarWidth, calendarTopHeight)];
        [calendarMonth setFont:[UIFont fontWithName:APPFONT size:8]];
        [calendarMonth setTextColor:darkGray];
        [calendarMonth setBackgroundColor:cloudsColor];
        [calendarMonth setTextAlignment:NSTextAlignmentCenter];
        [calendarMonth setText:@"May"];
        
        
        calendarDate = [[UILabel alloc] initWithFrame:CGRectMake(0, calendarTopHeight, calendarWidth, calendarBottomHeight)];
        [calendarDate setFont:[UIFont fontWithName:APPFONT size:12]];
        [calendarDate setTextColor:darkGray];
        [calendarDate setBackgroundColor:[UIColor whiteColor]];
        [calendarDate setTextAlignment:NSTextAlignmentCenter];
        [calendarDate setText:@"13"];
        
        [calendarOuter addSubview:calendarMonth];
        [calendarOuter addSubview:calendarDate];

        [calendarOuter.layer setCornerRadius:12.0f];
        
        [calendarOuter.layer setBorderColor:darkGray.CGColor];
        [calendarOuter.layer setBorderWidth:1.5f];
        [self addSubview:calendarOuter];

        
        yPos += calendarHeight;
        
        float titleHeight = 30;
         titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, titleHeight)];
        [titleLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [titleLabel setTextColor:darkGray];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setText:@"Test"];
        
        [self addSubview:titleLabel];
        
        yPos += titleHeight;
        
        float timeHeight = 20;
        timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, timeHeight)];
        [timeLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [timeLabel setTextColor:darkGray];
        [timeLabel setTextAlignment:NSTextAlignmentCenter];
        [timeLabel setBackgroundColor:[UIColor clearColor]];
        [timeLabel setText:@"Test"];
        [self addSubview:timeLabel];
        
        
        yPos += timeHeight;
        locationLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, timeHeight)];
        [locationLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [locationLabel setTextColor:darkGray];
        [locationLabel setTextAlignment:NSTextAlignmentCenter];
        [locationLabel setBackgroundColor:[UIColor clearColor]];

        [locationLabel setText:@"Test"];
        [self addSubview:locationLabel];
        yPos += timeHeight;

        
        
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
