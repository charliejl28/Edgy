//
//  EventsCell.m
//  Edgy
//

#import "EventsCell.h"
#import <QuartzCore/QuartzCore.h>
#import "Constants.h"

@implementation EventsCell
@synthesize timeRemaining, postedBy, views, title, distance, distanceImage, iconImage, badgeImage, badgeCount;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        self.clipsToBounds = YES;
        self.layer.cornerRadius = 3.0f;
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
        
        view.backgroundColor = [UIColor whiteColor];
        self.backgroundView = view;
        CGRect frame;
        
        float yPos = 20;
        
        float leftOffset = 75;
        
        frame = CGRectMake(30, 3, 50, 65);
        iconImage = [[UIImageView alloc] initWithFrame:frame];
       
        frame = CGRectMake(78, 10, 20, 20);
        badgeImage = [[UIImageView alloc] initWithFrame:frame];
        
        
        frame = CGRectMake(78, 10, 20, 20);
        badgeCount = [[UILabel alloc] initWithFrame:frame];
        badgeCount.backgroundColor = [UIColor clearColor];
        badgeCount.textColor = [UIColor whiteColor];
        badgeCount.textAlignment = NSTextAlignmentCenter;
        badgeCount.font = [UIFont fontWithName:APPFONT size:13];
        badgeCount.numberOfLines = 1;

        badgeCount.adjustsFontSizeToFitWidth = YES;
        
        
        
        
        frame = CGRectMake(leftOffset, yPos, self.contentView.bounds.size.width - leftOffset, 35);
        title = [[UILabel alloc] initWithFrame:frame];
        title.font = [UIFont fontWithName:APPFONT size:BUTTONFONTSIZE];
        title.textColor = edgyBlue;
        [title setBackgroundColor:[UIColor clearColor]];
        yPos += title.frame.size.height;
        

        frame = CGRectMake(115, 40, 12, 20);
        distanceImage = [[UIImageView alloc] initWithFrame:frame];
        distanceImage.image = [UIImage imageNamed:@"map-marker-small.png"];
        
        
        frame = CGRectMake(130, 40, self.contentView.bounds.size.width - 135, 20);
        distance = [[UILabel alloc] initWithFrame:frame];
        distance.font = [UIFont fontWithName:APPFONT size:13];
        distance.textColor = [UIColor grayColor];
        [distance setBackgroundColor:[UIColor clearColor]];

        [self addSubview:distanceImage];
        
        

        
        
        
        frame = CGRectMake(0, 173, self.contentView.bounds.size.width, 27);
        UIView *bottombackground = [[UIView alloc]initWithFrame:frame];
        // [UIColor colorWithRed:0.898 green:0.925 blue:0.933 alpha:1.0]
        bottombackground.backgroundColor = [UIColor colorWithRed:0.953 green:0.953 blue:0.953 alpha:.5];
        [self addSubview:bottombackground];
        
        frame = CGRectMake(0, 173, self.contentView.bounds.size.width/3, 27);
        timeRemaining = [[UIButton alloc] initWithFrame:frame];
        [timeRemaining setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        timeRemaining.titleLabel.font = [UIFont fontWithName:APPFONT size:12];
        UIImage *clock = [[UIImage alloc] init];
        //clock  = [UIImage imageNamed:@"Timer.png"];
        [timeRemaining setImage:clock forState:UIControlStateNormal];
        [timeRemaining setEnabled:NO];
        [timeRemaining setAdjustsImageWhenDisabled:NO];
        [timeRemaining setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 5)];
        UIView *rightBorder = [[UIView alloc] initWithFrame:CGRectMake(self.contentView.bounds.size.width/3, 78, 1, 17)];
        [rightBorder setBackgroundColor:[UIColor colorWithRed:0.839 green:0.847 blue:0.859 alpha:1.0]];
        [self addSubview:rightBorder];
        [self addSubview:timeRemaining];
        
        
        
        
        frame = CGRectMake(self.contentView.bounds.size.width/3, 173, self.contentView.bounds.size.width/3, 27);
        views = [[UIButton alloc] initWithFrame:frame];
        [views setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        views.titleLabel.font = [UIFont fontWithName:APPFONT size:12];
        
        UIImage *viewsImage = [[UIImage alloc] init];
        viewsImage  = [UIImage imageNamed:@"mail.png"];
        
        [views setImage:viewsImage forState:UIControlStateNormal];
        [views setEnabled:NO];
        [views setAdjustsImageWhenDisabled:NO];
        [views setImageEdgeInsets:UIEdgeInsetsMake(0, 30, 0, 30)];
        
        UIView *rightBorder2 = [[UIView alloc] initWithFrame:CGRectMake(2 * self.contentView.bounds.size.width/3, 78, 1, 17)];
        [rightBorder2 setBackgroundColor:[UIColor colorWithRed:0.839 green:0.847 blue:0.859 alpha:1.0]];
        [self addSubview:rightBorder2];
        
        [self addSubview:views];
        
        frame = CGRectMake(2 * self.contentView.bounds.size.width/3, 173, self.contentView.bounds.size.width/3, 27);
        postedBy = [[UIButton alloc] initWithFrame:frame];
        [postedBy setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        postedBy.titleLabel.font = [UIFont fontWithName:APPFONT size:12];
        UIImage *postedByImage = [[UIImage alloc] init];
        postedByImage  = [UIImage imageNamed:@"notes.png"];
        [postedBy setImage:postedByImage forState:UIControlStateNormal];
        [postedBy setEnabled:NO];
        [postedBy setAdjustsImageWhenDisabled:NO];
        [postedBy setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 5)];
        [self addSubview:postedBy];
    
        
     
        [self addSubview:title];
        [self addSubview:iconImage];
        [self addSubview:distance];
        [self addSubview:badgeImage];
        [self addSubview:badgeCount];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setFrame:(CGRect)frame {
    //frame.origin.x = 10;
    //frame.size.width -= 20;
    [super setFrame:frame];
}

- (void)prepareForReuse {
    [super prepareForReuse];
    self.imageView.image = nil;
}

@end
