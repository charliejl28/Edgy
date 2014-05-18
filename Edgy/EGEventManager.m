//
//  EGEventManager.m
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGEventManager.h"

@implementation EGEventManager

@synthesize allEvents;

# pragma mark - Singleton Methods

static EGEventManager* sharedSingleton = NULL;

- (id)init
{
	NSLog(@"Initializing Event Manager");
	if (![super init]) return nil;
	[self initializeAllEvents];
	return self;
}

+ (EGEventManager *)sharedManager
{
	@synchronized(self) {
		if (sharedSingleton == NULL) {
			sharedSingleton = [[self alloc] init];
		}
	}
	return(sharedSingleton);
}

- (void)initializeAllEvents
{
	// initialize events array
    self.allEvents = [[NSMutableArray alloc] init];
}

- (NSMutableArray *)getAllEvents
{
	return [NSMutableArray arrayWithArray:self.allEvents];
}

# pragma mark - Cloud Methods
- (void)updateFromCloud
{
	
}

@end
