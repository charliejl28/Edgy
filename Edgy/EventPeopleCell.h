//
//  EventPeopleCell.h
//  Edgy
//
//  Created by Charlie Jacobson on 4/20/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventInfoCell.h"
#import "PeopleListView.h"

@interface EventPeopleCell : EventInfoCell

@property (nonatomic, retain) PeopleListView* peopleListView;

@end
