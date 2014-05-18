//
//  EGContact.m
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGContact.h"

@implementation EGContact

@synthesize firstName, lastName, googleID, facebookID;

- (id)init
{
	self = [super init];
	if (self) {
		
		// strings
		self.firstName = @"";
		self.lastName = @"";
		self.googleID = @"";
		self.facebookID = @"";
	}
	return self;
}

@end
