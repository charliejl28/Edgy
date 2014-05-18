//
//  EGMail.h
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EGDateObject.h"

@interface EGMail : EGDateObject

@property (nonatomic, retain) NSString* from;
@property (nonatomic, retain) NSString* subject;
@property (nonatomic, retain) NSString* body;

@end
