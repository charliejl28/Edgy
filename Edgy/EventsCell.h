//
//  EventsCell.m
//  Edgy
//

#import <UIKit/UIKit.h>
@interface EventsCell : UITableViewCell
@property (nonatomic, retain) IBOutlet UIImageView *distanceImage;

@property (nonatomic, retain) IBOutlet UIImageView *iconImage;
@property (nonatomic, retain) IBOutlet UIImageView *badgeImage;
@property (nonatomic, retain) IBOutlet UILabel *badgeCount;

@property (nonatomic, retain) IBOutlet UILabel *title;
@property (nonatomic, retain) IBOutlet UILabel *distance;

@property (nonatomic, retain) IBOutlet UIButton *timeRemaining;
@property (nonatomic, retain) IBOutlet UIButton *postedBy;
@property (nonatomic, retain) IBOutlet UIButton *views;



@end
