//
//  FSAddress.m
//  FireStopV1
//
//  Created by Charlie Jacobson on 6/13/13.
//  Copyright (c) 2013 FireStop. All rights reserved.
//

#import "FSAddress.h"

@implementation FSAddress

@synthesize city, state, street, number, aptRoom;

- (id)init
{
	self = [super init];
	if (self) {
		self.number = @"";
		self.street = @"";
		self.aptRoom = @"";
		self.city = @"";
		self.state = @"";
	}
	return self;
}

//- (FSAddress*) initWithNumber: (NSUInteger)number_ Street:(NSString*)street_ City:(NSString*)city_ State:(NSString*)state_;
//{
//	self = [self init];
//	if (self){
//		self.number = [NSString stringWithFormat:@"%d", number_];
//		if (street_) self.street = street_;
//		if (city_) self.city = city_;
//		if (state_)self.state = state_;
//	}
//	return self;
//	
//}

//- (void) setCity:(NSString *)myCity {
////	NSLog(@"city");
//    city = [self trimLeadingWhiteSpace:myCity];
//}
//- (void) setState:(NSString *)myState {
////	NSLog(@"state");
//    state = [self trimLeadingWhiteSpace:myState];
//}
//- (void) setNumber:(NSString *)myNumber {
////	NSLog(@"number");
//    number = [self trimLeadingWhiteSpace:myNumber];
//}
//- (void) setStreet:(NSString *)myStreet {
////	NSLog(@"street");
//    street = [self trimLeadingWhiteSpace:myStreet];
//}

- (FSAddress *)initWithMultipleNumber:(NSString *)number_ Street:(NSString *)street_ City:(NSString *)city_ State:(NSString *)state_
{
	self = [self init];
	if (self){
		self.number = [NSString stringWithFormat:@"%@", number_];
		if (street_) self.street = street_;
		if (city_) self.city = city_;
		if (state_) self.state = state_;
	}
	return self;

}

- (FSAddress*) initWithNumber: (NSString*)aNumber Street:(NSString*)aStreet Apartment:(NSString*) anApt City:(NSString*)aCity State:(NSString*)aState
{
	assert(aNumber != NULL);
	assert(aStreet != NULL);
	assert(anApt != NULL);
	assert(aCity != NULL);
	assert(aState != NULL);
	
	self = [super init];
	if (self){
		self.number = [NSString stringWithFormat:@"%@", aNumber];
		self.street = aStreet;
		self.city = aCity;
		self.state = aState;
		self.aptRoom = anApt;
	}
	return self;
}


- (BOOL) isEqualToAddress: (FSAddress*) address {
    if ([self.street isEqualToString:address.street] && [self.number isEqualToString:address.number] && [self.city isEqualToString:address.city] && [self.state isEqualToString:address.state])
        return YES;
    else
        return NO;
}

- (NSString*) trimLeadingWhiteSpace: (NSString*) string {
//	NSLog(@"trimming address white space for: \"%@\"", string);
	
	if ([string length] == 0) {
//		NSLog(@"found empty string 1");
		return string;
	}
	
    int i = 0;
    while (i < [string length] && isspace([string characterAtIndex:i]))
        i++;
    if (i == [string length]){
//		NSLog(@"found empty string 2");
		return @"";
	}
	
	// MEMORY LEAK?
    return [NSString stringWithString:[string substringFromIndex:i]];
}

-(NSComparisonResult) compare: (FSAddress*) address {
    if ([self.street compare: address.street] != NSOrderedSame)
        return [self.street compare: address.street];
    else {
        BOOL selfnum = [self isNumber:self.number];
        BOOL addnum = [self isNumber:address.number];
        if (selfnum && addnum) {
            if ([self.number intValue] > [address.number intValue])
                return NSOrderedDescending;
            else if ([self.number intValue] < [address.number intValue])
                return NSOrderedAscending;
            else
                return NSOrderedSame;
        }
        else if (!selfnum && !addnum)
            return [self.number compare: address.number];
        else {
            if (selfnum)
                return NSOrderedAscending;
            else
                return NSOrderedDescending;
        }
    }
}

- (BOOL) isNumber: (NSString*) string {
    for (int i = 0; i < [string length]; i++) {
        if (!isdigit([string characterAtIndex:i]) && !isspace([string characterAtIndex:i]))
            return NO;
    }
    return YES;
}

//- (NSString*) trimWhite: (NSString*) string {
//    int i = [string length] - 1;
//    while (i >= 0 && isspace([string characterAtIndex:i]))
//        i--;
//    return [[NSString stringWithString:[string substringToIndex:i+1]]retain];
//}
    

- (NSString *)description
{
	return [NSString stringWithFormat:@"%@ %@, %@, %@", self.number, self.street, self.city, self.state];
}

- (NSString *)shortAddress
{
	return [NSString stringWithFormat:@"%@ %@", self.number, self.
		street];
}

# pragma mark - Cloud Posting

- (NSDictionary *)postingParameters
{
	NSLog(@"post params for address: %@", [self description]);

	NSMutableDictionary* mutDic = [[NSMutableDictionary alloc] init];
	[mutDic setValue:(self.number!=nil) ? self.number : @"" forKey:@"streetNum"];
	[mutDic setValue:(self.aptRoom!=nil) ? self.aptRoom : @"" forKey:@"apt_num"];
	[mutDic setValue:(self.street!=nil) ? self.street : @"" forKey:@"street"];
	[mutDic setValue:(self.city!=nil) ? self.city : @"" forKey:@"city"];
	[mutDic setValue:(self.state!=nil) ? self.state : @"" forKey:@"state"];
	
	NSLog(@"post params for address complete");
	return mutDic;
}

@end
