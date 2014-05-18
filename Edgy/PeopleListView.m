//
//  PeopleListView.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/21/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "PeopleListView.h"
#import "UIImageView+WebCache.h"
#import "PersonView.h"

@implementation PeopleListView

const float defaultPeopleSize = 30;
const float defaultHorizontalSpacing = 5;

@synthesize nameFontSize;

- (id)initWithFrame: (CGRect) frame AndPersonWidth: (float) size
{
	self = [super initWithFrame:frame];
	if (self) {
		
		// save size
		self.peopleSize = size;
		self.personSize = CGSizeMake(self.peopleSize, frame.size.height);
		self.horizontalSpacing = defaultHorizontalSpacing;
		
		// background
		self.backgroundColor = [UIColor clearColor];
		
		// people array
		self.people = [[NSMutableArray alloc] init];
		
		
	}
	return self;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [self initWithFrame:frame AndPersonWidth:defaultPeopleSize];
    if (self) {
        // Initialization code
    }
    return self;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

# pragma mark - Adding People

- (void)addPersonforImage: (UIImageView *)image AndName:(NSString *)firstName{
    image.frame = CGRectMake(self.people.count * (self.peopleSize + self.horizontalSpacing), 0, self.peopleSize, self.peopleSize);
    [self addSubview:image];
    [self.people addObject:image];
}

- (void)addPersonForFacebookID:(NSString *)fbID AndName:(NSString *)firstName{
//    UIImageView *fbPicture = [[UIImageView alloc] init];
//    [fbPicture setImageWithURL: [NSURL URLWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=square", fbID]]];
//    fbPicture.clipsToBounds = YES;
//    fbPicture.layer.cornerRadius = self.peopleSize/2;
//    
//    [self addPersonforImage:fbPicture AndName:firstName];
	CGRect frame = CGRectMake(self.people.count * (self.peopleSize + self.horizontalSpacing), 0, self.personSize.width, self.personSize.height);
	
	PersonView* personView = [[PersonView alloc] initWithFrame:frame Name:firstName FacebookID:fbID];
	personView.nameFontSize = self.nameFontSize;
	[self.people addObject:personView];
	[self addSubview:personView];
}

@end
