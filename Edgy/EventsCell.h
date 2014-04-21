//
//  EventsCell.m
//  Edgy
//

#import <UIKit/UIKit.h>
#import "PeopleListView.h"

@interface EventsCell : UITableViewCell

@property (nonatomic, retain) IBOutlet UIImageView *meetingView;
//@property (nonatomic, retain) IBOutlet UIView *peopleOuter;
@property (nonatomic, retain) PeopleListView* peopleListView;

@property (nonatomic, retain) IBOutlet UIImageView *badgeImage;
@property (nonatomic, retain) IBOutlet UILabel *badgeCount;

@property (nonatomic, retain) IBOutlet UILabel *title;
@property (nonatomic, retain) IBOutlet UILabel *location;


@property (nonatomic, retain) NSMutableArray *people;

-(void) addPersonForFacebookID:(NSString *)fbID AndName:(NSString *)firstName;


@end
