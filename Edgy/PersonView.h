//
//  PersonView.h
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonView : UIView

@property (nonatomic, retain) UIImageView* image;
@property (nonatomic, retain) UITextField* nameField;
@property (nonatomic) float nameFontSize;

- (id)initWithFrame:(CGRect)frame Name: (NSString*) name FacebookID: (NSString*) fbID;



@end
