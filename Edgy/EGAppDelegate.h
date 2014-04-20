//
//  EGAppDelegate.h
//  Edgy
//
//  Created by Charlie Jacobson on 4/19/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventsViewController.h"

@interface EGAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
	
@property EventsViewController* eventsViewController;
@property UINavigationController* mainNav;

@end
