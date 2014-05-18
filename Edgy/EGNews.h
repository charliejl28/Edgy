//
//  EGNews.h
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGDateObject.h"

@interface EGNews : EGDateObject

@property (nonatomic, retain) NSString* title;
@property (nonatomic, retain) NSString* source;
@property (nonatomic, retain) NSString* body;

@end
