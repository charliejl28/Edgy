//
//  EGNote.h
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGDateObject.h"

@interface EGNote : EGDateObject

@property (nonatomic, retain) NSString* subject;
@property (nonatomic, retain) NSString* body;

@end
