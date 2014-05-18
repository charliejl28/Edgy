//
//  PeopleListView.h
//  Edgy
//
//  Created by Charlie Jacobson on 4/21/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeopleListView : UIView

@property (nonatomic) float peopleSize;
@property (nonatomic) CGSize personSize;
@property (nonatomic) float nameFontSize;
@property (nonatomic) float horizontalSpacing;
@property (nonatomic) BOOL shouldScroll;

@property (nonatomic, retain) NSMutableArray *people;

- (id)initWithFrame: (CGRect) frame AndPersonWidth: (float) size;

-(void) addPersonForFacebookID:(NSString *)fbID AndName:(NSString *)firstName;

@end
