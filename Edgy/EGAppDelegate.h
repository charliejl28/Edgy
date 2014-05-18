//
//  EGAppDelegate.h
//  Edgy
//
//  Created by Charlie Jacobson on 4/19/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventsViewController.h"
#import "LoginViewController.h"
#import "EGHomeViewController.h"

@interface EGAppDelegate : UIResponder <UIApplicationDelegate, LoginViewControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property EGHomeViewController* homeViewController;
@property EventsViewController* eventsViewController;

@property UINavigationController* mainNav;

@end
