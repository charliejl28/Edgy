//
//  EventMeetingsCell.h
//  Edgy
//
//  Created by Charlie Jacobson on 4/21/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventInfoCell.h"
#import "HorizontalListView.h"

@interface EventMeetingsCell : EventInfoCell

@property (nonatomic, retain) HorizontalListView* meetingsList;

@end
