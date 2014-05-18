//
//  EGDateObject.h
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EGDateObject : NSObject

@property (nonatomic, retain) NSDate* date;

- (void) setDateFromString: (NSString*) dateString;

@end
