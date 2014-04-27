//
//  MeetingList.h
//  Edgy
//
//  Created by Darshan Desai on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorizontalListView : UIView

// views
@property (nonatomic, retain) NSMutableArray *viewItems; // array of views to display horizontally
@property (nonatomic) float horizontalSpacing;			 // spacing between vies, DEFAULT is 5

// horizontal scrolling
@property (nonatomic) BOOL shouldScroll;	// controls horizontal scrolling or show "3 More Items..." view, DEFAULT is NO
@property (nonatomic) int maxItems;			// max items to show if no scrolling, DEFAULT is 3
@property (nonatomic, retain) NSString* moreItemsName;	// item name to use in more items view, DEFAULT is "Items"

- (void) addItem: (UIView*) viewItem;


@end
