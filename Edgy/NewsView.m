//
//  NewsView.m
//  Edgy
//
//  Created by Darshan Desai on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "NewsView.h"
#import "Constants.h"
@implementation NewsView
@synthesize titleLabel, timeLabel, subjectLabel, sourceLabel;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        float yPos = 5;
        float xPos = 0;
        float width = self.frame.size.width;
        
        float timeLabelWidth = 60;
        
        
        float titleHeight = 30;
        titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, titleHeight)];
        [titleLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [titleLabel setTextColor:darkGray];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setText:@"this is a title "];
        
        [self addSubview:titleLabel];
        
        yPos += titleHeight;
        
        
        float subjectHeight = 20;
        subjectLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width - timeLabelWidth, subjectHeight)];
        [subjectLabel setFont:[UIFont fontWithName:APPFONT size:14]];
        [subjectLabel setTextColor:darkGray];
        [subjectLabel setTextAlignment:NSTextAlignmentCenter];
        [subjectLabel setBackgroundColor:[UIColor clearColor]];
        [subjectLabel setText:@"this is a subject"];
        [self addSubview:subjectLabel];
        
        
        float timeLabelHeight = 20;
        timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(width - timeLabelWidth, yPos, timeLabelWidth, timeLabelHeight)];
        [timeLabel setFont:[UIFont fontWithName:APPFONT size:11]];
        [timeLabel setTextColor:darkGray];
        [timeLabel setTextAlignment:NSTextAlignmentCenter];
        [timeLabel setBackgroundColor:[UIColor clearColor]];
        
        [timeLabel setText:@"7:20A"];
        [self addSubview:timeLabel];
        
        
        yPos += subjectHeight;
        
        
        float sourceHeight = 15;
        sourceLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, yPos, width, sourceHeight)];
        [sourceLabel setFont:[UIFont fontWithName:APPFONT size:11]];
        [sourceLabel setTextColor:darkGray];
        [sourceLabel setTextAlignment:NSTextAlignmentCenter];
        [sourceLabel setBackgroundColor:[UIColor clearColor]];
        
        [sourceLabel setText:@"This is a news source"];
        [self addSubview:sourceLabel];
    }
    return self;
}



@end
