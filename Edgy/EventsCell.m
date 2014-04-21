//
//  EventsCell.m
//  Edgy
//

#import "EventsCell.h"
#import "UIImageView+WebCache.h"
#import <QuartzCore/QuartzCore.h>
#import "Constants.h"

@implementation EventsCell

@synthesize title, location, people, peopleOuter, startTimeLabel, durationLabel, meetingView, mailView, notesView, newsView, badgeCountMail, badgeCountMeeting, badgeCountNews, badgeCountNote;

float peopleSize = 25;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        people = [[NSMutableArray alloc] init];

        self.clipsToBounds = YES;
        self.layer.cornerRadius = 3.0f;
        self.backgroundColor = [UIColor clearColor];
        float cellHeight = 150;

        UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.contentView.frame.size.width, cellHeight)];
        [backgroundView setBackgroundColor:[UIColor whiteColor]];
        
        
        CGRect frame;
        float yPos = 5;
        float leftOffset = 100;
        
     

        
        
        float labelWidth = 65;
        float labelHeight = 20;

        startTimeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 30, labelWidth, labelHeight)];
        [startTimeLabel setFont:[UIFont fontWithName:APPFONT size:12]];
        [startTimeLabel setText:@"12:05 PM"];
        [startTimeLabel setBackgroundColor:blueColor];
        [startTimeLabel setTextColor:[UIColor whiteColor]];
        [startTimeLabel setTextAlignment:NSTextAlignmentCenter];
        [backgroundView addSubview:startTimeLabel];
    
        durationLabel = [[UILabel alloc] initWithFrame:CGRectMake(startTimeLabel.frame.origin.x, startTimeLabel.frame.origin.y + labelHeight, labelWidth, labelHeight)];
        [durationLabel setFont:[UIFont fontWithName:APPFONT size:10]];
        [durationLabel setText:@"15 Min"];
        [durationLabel setBackgroundColor:[UIColor clearColor]];
        [durationLabel setTextColor:concreteColor];
        [durationLabel setTextAlignment:NSTextAlignmentCenter];
        [backgroundView addSubview:durationLabel];
        
    
        frame = CGRectMake(leftOffset, yPos, self.contentView.bounds.size.width - leftOffset, 25);
        title = [[UILabel alloc] initWithFrame:frame];
        title.font = [UIFont fontWithName:APPFONT size:16];
        title.textColor = edgyDarkBlue;
        [title setBackgroundColor:[UIColor clearColor]];
        yPos += title.frame.size.height;
        [backgroundView addSubview:title];

        
        float locationOuterHeight = 20;
        UIView *locationOuter = [[UIView alloc] initWithFrame:CGRectMake(leftOffset + 15, yPos, self.contentView.bounds.size.width - leftOffset, locationOuterHeight)];
        
        float smallImageSize = 15;
        frame = CGRectMake(0, (locationOuterHeight - smallImageSize)/2, smallImageSize, smallImageSize);
        UIImageView *locationImage = [[UIImageView alloc] initWithFrame:frame];
        UIImage *locationIcon = [UIImage imageNamed:@"location.png"];
        [locationImage setImage:locationIcon];
        
        
        location = [[UILabel alloc] initWithFrame:CGRectMake(smallImageSize + 2.5, 0, locationOuter.frame.size.width - smallImageSize + 5, locationOuter.frame.size.height)];
        location.font = [UIFont fontWithName:APPFONT size:11];
        location.textColor = [UIColor grayColor];
        [location setBackgroundColor:[UIColor clearColor]];
        [location setText:@"Starbucks on 47th Street"];
        [locationOuter addSubview:location];
        [locationOuter addSubview:locationImage];
        [backgroundView addSubview:locationOuter];
        
        yPos += locationOuterHeight;
        yPos += 10;

//        peopleOuter = [[UIView alloc] initWithFrame:CGRectMake(leftOffset, yPos, self.contentView.bounds.size.width - leftOffset, 30)];
//        [peopleOuter setBackgroundColor:[UIColor clearColor]];
//        [backgroundView addSubview:peopleOuter];
        
		self.peopleListView = [[PeopleListView alloc] initWithFrame:CGRectMake(leftOffset, yPos, self.contentView.bounds.size.width - leftOffset, 30)];
		[backgroundView addSubview:self.peopleListView];
		
    
        float bottomRowHeight = 50;
        
        frame = CGRectMake(0, cellHeight - bottomRowHeight, self.contentView.bounds.size.width, bottomRowHeight);
        UIView *bottomRow = [[UIView alloc]initWithFrame:frame];
        bottomRow.backgroundColor = [UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:1.0];
        [self addSubview:bottomRow];
        
        float bottomRowCellWidth = self.frame.size.width/4;
        float imageSize = 30;
        float topPadding = 3;
        float imageLeftOffset = (bottomRowCellWidth -  imageSize)/2;
        
        UIView *meetingOuterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomRowCellWidth, bottomRowHeight)];
        meetingView = [[UIImageView alloc] initWithFrame:CGRectMake(imageLeftOffset, topPadding, imageSize, imageSize)];
        
        UIImage *meetingIcon = [UIImage imageNamed:@"meeting.png"];
        [meetingView setImage:meetingIcon];
        
        
        UILabel *meetingLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, imageSize + topPadding, bottomRowCellWidth, bottomRowHeight - imageSize)];
        [meetingLabel setFont:[UIFont fontWithName:APPFONT size:11]];
        [meetingLabel setText:@"Meetings"];
        [meetingLabel setBackgroundColor:[UIColor clearColor]];
        [meetingLabel setTextColor:[UIColor grayColor]];
        [meetingLabel setTextAlignment:NSTextAlignmentCenter];
        [meetingOuterView addSubview:meetingLabel];
        [meetingOuterView addSubview:meetingView];

       
        frame = CGRectMake(imageLeftOffset + imageSize - 7.5, 5, 15, 15);
        badgeCountMeeting = [[UILabel alloc] initWithFrame:frame];
        badgeCountMeeting.backgroundColor = [UIColor redColor];
        badgeCountMeeting.textColor = [UIColor whiteColor];
        badgeCountMeeting.textAlignment = NSTextAlignmentCenter;
        badgeCountMeeting.font = [UIFont fontWithName:APPFONT size:10];
        badgeCountMeeting.numberOfLines = 1;
        badgeCountMeeting.adjustsFontSizeToFitWidth = YES;
        badgeCountMeeting.layer.cornerRadius = 7.5;
        badgeCountMeeting.clipsToBounds = YES;
        [badgeCountMeeting setHidden:YES];
        [meetingOuterView addSubview:badgeCountMeeting];
        
        [bottomRow addSubview:meetingOuterView];
    
        
        
        UIView *firstBorder = [[UIView alloc] initWithFrame:CGRectMake(bottomRowCellWidth, 1, 1, bottomRowHeight)];
        [firstBorder setBackgroundColor:borderColor];
        [bottomRow addSubview:firstBorder];
        

        
        UIView *mailOuterView = [[UIView alloc] initWithFrame:CGRectMake(bottomRowCellWidth * 1, 0, bottomRowCellWidth, bottomRowHeight)];
        mailView = [[UIImageView alloc] initWithFrame:CGRectMake(imageLeftOffset, topPadding, imageSize, imageSize)];
        UIImage *mail = [UIImage imageNamed:@"mail.png"];
        [mailView setImage:mail];
        [mailOuterView addSubview:mailView];

        UILabel *mailLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, imageSize + topPadding, bottomRowCellWidth, bottomRowHeight - imageSize)];
        [mailLabel setFont:[UIFont fontWithName:APPFONT size:11]];
        [mailLabel setText:@"Mail"];
        [mailLabel setBackgroundColor:[UIColor clearColor]];
        [mailLabel setTextColor:[UIColor grayColor]];
        [mailLabel setTextAlignment:NSTextAlignmentCenter];
        [mailOuterView addSubview:mailLabel];
        
        
        frame = CGRectMake(imageLeftOffset + imageSize - 7.5, 5, 15, 15);
        badgeCountMail = [[UILabel alloc] initWithFrame:frame];
        badgeCountMail.backgroundColor = [UIColor redColor];
        badgeCountMail.textColor = [UIColor whiteColor];
        badgeCountMail.textAlignment = NSTextAlignmentCenter;
        badgeCountMail.font = [UIFont fontWithName:APPFONT size:10];
        badgeCountMail.numberOfLines = 1;
        badgeCountMail.adjustsFontSizeToFitWidth = YES;
        badgeCountMail.layer.cornerRadius = 7.5;
        badgeCountMail.clipsToBounds = YES;
        [badgeCountMail setHidden:YES];
        [mailOuterView addSubview:badgeCountMail];
        
        [bottomRow addSubview:mailOuterView];
        
        
        UIView *secondBorder = [[UIView alloc] initWithFrame:CGRectMake(bottomRowCellWidth * 2, 1, 1, bottomRowHeight)];
        [secondBorder setBackgroundColor:borderColor];
        [bottomRow addSubview:secondBorder];
        
        
        
        
        
        UIView *notesOuterView = [[UIView alloc] initWithFrame:CGRectMake(bottomRowCellWidth * 2, 0, bottomRowCellWidth, bottomRowHeight)];
        notesView = [[UIImageView alloc] initWithFrame:CGRectMake(imageLeftOffset, topPadding, imageSize, imageSize)];
        UIImage *notesIcon = [UIImage imageNamed:@"notes.png"];
        [notesView setImage:notesIcon];
        [notesOuterView addSubview:notesView];
        
        UILabel *notesLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, imageSize + topPadding, bottomRowCellWidth, bottomRowHeight - imageSize)];
        [notesLabel setFont:[UIFont fontWithName:APPFONT size:11]];
        [notesLabel setText:@"Notes"];
        [notesLabel setBackgroundColor:[UIColor clearColor]];
        [notesLabel setTextColor:[UIColor grayColor]];
        [notesLabel setTextAlignment:NSTextAlignmentCenter];
        [notesOuterView addSubview:notesLabel];
        
        
        frame = CGRectMake(imageLeftOffset + imageSize - 7.5, 5, 15, 15);
        badgeCountNote = [[UILabel alloc] initWithFrame:frame];
        badgeCountNote.backgroundColor = [UIColor redColor];
        badgeCountNote.textColor = [UIColor whiteColor];
        badgeCountNote.textAlignment = NSTextAlignmentCenter;
        badgeCountNote.font = [UIFont fontWithName:APPFONT size:10];
        badgeCountNote.numberOfLines = 1;
        badgeCountNote.adjustsFontSizeToFitWidth = YES;
        badgeCountNote.layer.cornerRadius = 7.5;
        badgeCountNote.clipsToBounds = YES;
        [badgeCountNote setHidden:YES];
        [notesOuterView addSubview:badgeCountNote];
        
        [bottomRow addSubview:notesOuterView];
        
        
        
        
        UIView *thirdBorder = [[UIView alloc] initWithFrame:CGRectMake(bottomRowCellWidth * 3, 1, 1, bottomRowHeight)];
        [thirdBorder setBackgroundColor:borderColor];
        [bottomRow addSubview:thirdBorder];
        
        UIView *topBorder = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.contentView.frame.size.width, 1)];
        [topBorder setBackgroundColor:borderColor];
        [bottomRow addSubview:topBorder];
        
        
        UIView *bottomBorder = [[UIView alloc] initWithFrame:CGRectMake(0, bottomRowHeight, self.contentView.frame.size.width, 1)];
        [bottomBorder setBackgroundColor:borderColor];
        [bottomRow addSubview:bottomBorder];
        
    
        
        UIView *newsOuterView = [[UIView alloc] initWithFrame:CGRectMake(bottomRowCellWidth * 3, 0, bottomRowCellWidth, bottomRowHeight)];
        newsView = [[UIImageView alloc] initWithFrame:CGRectMake(imageLeftOffset, topPadding, imageSize, imageSize)];
        UIImage *newsIcon = [UIImage imageNamed:@"news.png"];
        [newsView setImage:newsIcon];
        [newsOuterView addSubview:newsView];
        
        UILabel *newsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, imageSize + topPadding, bottomRowCellWidth, bottomRowHeight - imageSize)];
        [newsLabel setFont:[UIFont fontWithName:APPFONT size:11]];
        [newsLabel setText:@"News"];
        [newsLabel setBackgroundColor:[UIColor clearColor]];
        [newsLabel setTextColor:[UIColor grayColor]];
        [newsLabel setTextAlignment:NSTextAlignmentCenter];
        [newsOuterView addSubview:newsLabel];
        
        frame = CGRectMake(imageLeftOffset + imageSize - 7.5, 5, 15, 15);
        badgeCountNews = [[UILabel alloc] initWithFrame:frame];
        badgeCountNews.backgroundColor = [UIColor redColor];
        badgeCountNews.textColor = [UIColor whiteColor];
        badgeCountNews.textAlignment = NSTextAlignmentCenter;
        badgeCountNews.font = [UIFont fontWithName:APPFONT size:10];
        badgeCountNews.numberOfLines = 1;
        badgeCountNews.adjustsFontSizeToFitWidth = YES;
        badgeCountNews.layer.cornerRadius = 7.5;
        badgeCountNews.clipsToBounds = YES;
        [badgeCountNews setHidden:YES];
        [newsOuterView addSubview:badgeCountNews];
        
        [bottomRow addSubview:newsOuterView];

        [backgroundView addSubview:bottomRow];

        [self addSubview:backgroundView];
        
        //[backgroundView addSubview:badgeImage];
        //[backgroundView addSubview:badgeCount];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}
//
//- (void)addPersonforImage: (UIImageView *)image AndName:(NSString *)firstName{
////    image.frame = CGRectMake(people.count * (peopleSize + 5), 0, peopleSize, peopleSize);
////    [peopleOuter addSubview:image];
////    [people addObject:image];
//
//}

- (void)addPersonForFacebookID:(NSString *)fbID AndName:(NSString *)firstName{
//    UIImageView *fbPicture = [[UIImageView alloc] init];
//    [fbPicture setImageWithURL: [NSURL URLWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=square", fbID]]];
//    fbPicture.clipsToBounds = YES;
//    fbPicture.layer.cornerRadius = peopleSize/2;
    
//    [self addPersonforImage:fbPicture AndName:firstName];

	[self.peopleListView addPersonForFacebookID:fbID AndName:firstName];
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
