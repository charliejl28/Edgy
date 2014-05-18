//
//  EventMailCell.h
//  Edgy
//
//  Created by Charlie Jacobson on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventInfoCell.h"

@class HorizontalListView;

@interface EventMailCell : EventInfoCell

@property (nonatomic, retain) HorizontalListView* mailList;


@end
