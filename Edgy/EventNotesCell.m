
//
//  EventNotes.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EventNotesCell.h"
#import "HorizontalListView.h"
#import "NotesView.h"

@implementation EventNotesCell

@synthesize notesList;

const static float paddingSide = 2;
const static float paddingBetween = 10;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		
		// title label
		self.titleLabel.text = @"Notes";
		
		// background
		self.backgroundColor = [UIColor clearColor];
		
		// horizontal list view for email views
		float notesListY = self.titleLabel.frame.origin.y  + self.titleLabel.frame.size.height + 5;
		self.notesList = [[HorizontalListView alloc] initWithFrame:CGRectMake(2, notesListY, self.frame.size.width - paddingSide*2, 100)];
		
		// dummy notes
		for (int i = 0; i < 4; i++) {
			NotesView* nv = [[NotesView alloc] initWithFrame:CGRectMake(0, 0, (self.frame.size.width - paddingSide*2 - paddingBetween)/3.0, 80)];
			[self.notesList addItem:nv];
		}
		[self addSubview:self.notesList];
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
