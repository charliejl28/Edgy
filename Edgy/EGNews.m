//
//  EGNews.m
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGNews.h"

@implementation EGNews

@synthesize title, source, body;

- (id)init
{
	self = [super init];
	if (self) {
		
		// strings
		self.title = @"";
		self.source = @"";
		self.body = @"";
		
	}
	return self;
}
@end
