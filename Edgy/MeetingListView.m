//
//  MeetingListView.m
//  Edgy
//
//  Created by Darshan Desai on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "MeetingListView.h"
#import "Constants.h"

@implementation MeetingListView
@synthesize titleLabel, timeLabel, locationLabel;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        float yPos = 5;
        float xPos = 0;
        float width = self.frame.size.width;
        
        
        float titleHeight = 30;
         titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, titleHeight)];
        [titleLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [titleLabel setTextColor:darkGray];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setText:@"Test"];
        
        [self addSubview:titleLabel];
        
        yPos += titleHeight;
        
        float timeHeight = 20;
        timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, timeHeight)];
        [timeLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [timeLabel setTextColor:darkGray];
        [timeLabel setTextAlignment:NSTextAlignmentCenter];
        [timeLabel setText:@"Test"];
        [self addSubview:timeLabel];
        
        
        yPos += timeHeight;
        locationLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, timeHeight)];
        [locationLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [locationLabel setTextColor:darkGray];
        [locationLabel setTextAlignment:NSTextAlignmentCenter];
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
