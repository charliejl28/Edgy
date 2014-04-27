//
//  MeetingList.h
//  Edgy
//
//  Created by Darshan Desai on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeetingList : UIView

@property (nonatomic) float meetingViewSize;
@property (nonatomic) float horizontalSpacing;
@property (nonatomic) BOOL shouldScroll;

@property (nonatomic, retain) NSMutableArray *meetings;

- (id)initWithFrame: (CGRect) frame AndPeopleSize: (float) size;

-(void) addPersonForFacebookID:(NSString *)fbID AndName:(NSString *)firstName;


@end
