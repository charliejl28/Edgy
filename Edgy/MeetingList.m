//
//  MeetingList.m
//  Edgy
//
//  Created by Darshan Desai on 4/27/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "MeetingList.h"

@implementation MeetingList

const float defaultPeopleSize = 25;
const float defaultHorizontalSpacing = 5;

- (id)initWithFrame: (CGRect) frame AndPeopleSize: (float) size
{
    self = [super initWithFrame:frame];
    if (self) {
		// save size
		self.meetingViewSize = size;
		self.horizontalSpacing = defaultHorizontalSpacing;
		
		// background
		self.backgroundColor = [UIColor clearColor];
		
		// people array
		self.meetings = [[NSMutableArray alloc] init];
    }
    return self;
}







# pragma mark - Adding People

- (void)addPersonforImage: (UIImageView *)image AndName:(NSString *)firstName{
    image.frame = CGRectMake(self.people.count * (self.peopleSize + self.horizontalSpacing), 0, self.peopleSize, self.peopleSize);
    [self addSubview:image];
    [self.people addObject:image];
}

- (void)addPersonForFacebookID:(NSString *)fbID AndName:(NSString *)firstName{
    UIImageView *fbPicture = [[UIImageView alloc] init];
    [fbPicture setImageWithURL: [NSURL URLWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=square", fbID]]];
    fbPicture.clipsToBounds = YES;
    fbPicture.layer.cornerRadius = self.peopleSize/2;
    
    [self addPersonforImage:fbPicture AndName:firstName];
}

@end
