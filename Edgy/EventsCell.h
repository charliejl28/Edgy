//
//  EventsCell.m
//  Edgy
//

#import <UIKit/UIKit.h>
@interface EventsCell : UITableViewCell

@property (nonatomic, retain)  UIImageView *meetingView;
@property (nonatomic, retain) UIImageView *mailView;
@property (nonatomic, retain) UIImageView *notesView;
@property (nonatomic, retain) UIImageView *newsView;

@property (nonatomic, retain)  UIView *peopleOuter;

@property (nonatomic, retain)  UILabel *badgeCountMeeting;
@property (nonatomic, retain)  UILabel *badgeCountMail;
@property (nonatomic, retain)  UILabel *badgeCountNote;
@property (nonatomic, retain)  UILabel *badgeCountNews;

@property (nonatomic, retain)  UILabel *title;
@property (nonatomic, retain)  UILabel *location;

@property (nonatomic, retain)  UILabel *startTimeLabel;
@property (nonatomic, retain)  UILabel *durationLabel;



@property (nonatomic, retain) NSMutableArray *people;

-(void) addPersonForFacebookID:(NSString *)fbID AndName:(NSString *)firstName;


@end
