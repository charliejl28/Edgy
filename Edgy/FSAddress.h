//
//  FSAddress.h
//  FireStopV1
//
//  Created by Charlie Jacobson on 6/13/13.
//  Copyright (c) 2013 FireStop. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSAddress : NSObject

@property (copy, readwrite) NSString * city;
@property (copy, readwrite) NSString * number;
@property (copy, readwrite) NSString * state;
@property (copy, readwrite) NSString * street;
@property (retain, nonatomic) NSString* aptRoom;

//- (FSAddress*) initWithNumber: (NSUInteger)number Street:(NSString*)street City:(NSString*)city State:(NSString*)state;
- (FSAddress*) initWithMultipleNumber: (NSString*)number Street:(NSString*)street City:(NSString*)city State:(NSString*)state;
- (FSAddress*) initWithNumber: (NSString*)number Street:(NSString*)street Apartment:(NSString*) apt City:(NSString*)city State:(NSString*)state;

- (NSString*) description;
- (NSString*) shortAddress;
- (BOOL) isEqualToAddress:(FSAddress*) address;
-(NSComparisonResult) compare: (FSAddress*) address;
- (void) setStreet:(NSString *)myStreet;
- (void) setNumber:(NSString *)myNumber;
- (void) setState:(NSString *)myState;
- (void) setCity:(NSString *)myCity;

- (NSDictionary*) postingParameters;

@end
