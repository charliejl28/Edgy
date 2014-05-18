//
//  EGMail.m
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGMail.h"

@implementation EGMail

@synthesize from, subject, body, date;

- (id)init
{
	self = [super init];
	if (self) {
		
		// strings
		self.from = @"";
		self.subject = @"";
		self.body = @"";
		
	}
	return self;
}

@end
