//
//  EGEventManager.h
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EGEventManager : NSObject

@property (nonatomic, retain) NSMutableArray* allEvents;

- (void) initializeAllEvents;
+ (EGEventManager*) sharedManager;

- (void) updateFromCloud;

- (NSMutableArray*) getAllEvents;

@end
