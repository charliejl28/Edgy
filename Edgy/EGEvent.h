//
//  EGEvent.h
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FSAddress.h"
#import "EGDateObject.h"

@interface EGEvent : EGDateObject


// properties
@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) FSAddress* address;

// people
@property (nonatomic, retain) NSMutableArray* people;

// events
@property (nonatomic, retain) NSMutableArray* events;

// emails
@property (nonatomic, retain) NSMutableArray* mail;

// notes
@property (nonatomic, retain) NSMutableArray* notes;

// news
@property (nonatomic, retain) NSMutableArray* news;


@end
