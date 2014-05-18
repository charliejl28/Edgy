//
//  EGDateObject.m
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGDateObject.h"

@implementation EGDateObject


- (void)setDateFromString:(NSString *)dateString
{
	NSDateFormatter *df = [[NSDateFormatter alloc] init];
	[df setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
	[df setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
	self.date = [df dateFromString: dateString];
	NSLog(@"parsed date: %@", [self.date description]);
}

@end
