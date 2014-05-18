//
//  EGEvent.m
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGEvent.h"

@implementation EGEvent

- (id)init
{
	self = [super init];
	if (self) {
		
		// strings
		self.name = @"";
		
		// arrays
		self.people = [[NSMutableArray alloc] init];
		self.events = [[NSMutableArray alloc] init];
		self.mail = [[NSMutableArray alloc] init];
		self.notes = [[NSMutableArray alloc] init];
		self.news = [[NSMutableArray alloc] init];
	}
	return self;
}



@end
