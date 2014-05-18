//
//  PersonView.m
//  Edgy
//
//  Created by Charlie Jacobson on 5/18/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "PersonView.h"
#import "UIImageView+WebCache.h"
#import "Constants.h"

@implementation PersonView

@synthesize image;
@synthesize nameField;
@synthesize nameFontSize;

//const static int paddingLeftRight = 3;
//const static int paddingTopBot = 3;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame Name:(NSString *)name FacebookID:(NSString *)fbID
{
	self = [self initWithFrame:frame];
	if (self) {
		
		// sizes
		float personSize = frame.size.height*2/3;
		if (personSize > frame.size.width){
			personSize = frame.size.width;
		}
		float nameHeight = frame.size.height/3;
		float personY = (frame.size.height - nameHeight - personSize)/2.0;
		float personX = (frame.size.width - personSize)/2.0;
		
		// person image
		self.image = [[UIImageView alloc] init];
		[self.image setImageWithURL: [NSURL URLWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=square", fbID]]];
		self.image.clipsToBounds = YES;
		self.image.layer.cornerRadius = personSize/2;
		self.image.frame = CGRectMake(personX, personY, personSize, personSize);
		[self addSubview:self.image];
		
		// person name
//		float imageTextPadding = 2;
		self.nameField = [[UITextField alloc] initWithFrame:CGRectMake(0, frame.size.height - nameHeight, frame.size.width, nameHeight)];
		self.nameField.text = name;
		self.nameField.minimumFontSize = 4;
		self.nameField.adjustsFontSizeToFitWidth = YES;
		self.nameField.textAlignment = NSTextAlignmentCenter;
		[self addSubview:self.nameField];
		
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

- (void)setNameFontSize:(float)nameFontSize_
{
	nameFontSize = nameFontSize_;
	self.nameField.font = [UIFont fontWithName:APPFONT size:self.nameFontSize];
}
@end
