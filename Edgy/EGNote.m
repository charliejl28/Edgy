//
//  EGNote.m
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGNote.h"

@implementation EGNote

@synthesize subject, body, date;

- (id)init
{
	self = [super init];
	if (self) {
		
		// strings
		self.subject = @"";
		self.body = @"";
		
	}
	return self;
}
@end
