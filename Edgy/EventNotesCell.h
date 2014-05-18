//
//  EventNotes.h
//  Edgy
//
//  Created by Charlie Jacobson on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventInfoCell.h"

@class HorizontalListView;

@interface EventNotesCell : EventInfoCell

@property (nonatomic, retain) HorizontalListView* notesList;

@end
