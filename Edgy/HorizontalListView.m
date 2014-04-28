//
//  MeetingList.m
//  Edgy
//
//  Created by Darshan Desai on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "HorizontalListView.h"

@implementation HorizontalListView

//const float defaultPeopleSize = 25;

const float DEFAULT_HORIZONTAL_SPACING = 5;
const int DEFAULT_MAX_ITEMS = 3;
const float DEFAULT_LEFT_PADDING = 20;
const float DEFAULT_TOP_PADDING = 20;

- (id)initWithFrame: (CGRect) frame
{
    self = [super initWithFrame:frame];
    if (self) {
		// save size
		self.horizontalSpacing = DEFAULT_HORIZONTAL_SPACING;
		
		// background
		self.backgroundColor = [UIColor clearColor];
		
		// people array
		self.viewItems = [[NSMutableArray alloc] init];
    }
    return self;
}

# pragma mark - Managing Views

- (void)addItem:(UIView *)viewItem
{
	float x = DEFAULT_LEFT_PADDING;
	for (UIView* itemView in self.viewItems) {
		x += itemView.frame.size.width;
		x += self.horizontalSpacing;
	}
	NSLog(@"x coord: %f", x);
	
	CGRect frame = viewItem.frame;
	frame.origin.x = x;
	frame.origin.y = DEFAULT_TOP_PADDING;
	viewItem.frame = frame;
	[self addSubview:viewItem];
	[self.viewItems addObject:viewItem];
}

# pragma mark - Scrolling



@end
