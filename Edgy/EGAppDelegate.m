//
//  EGAppDelegate.m
//  Edgy
//
//  Created by Charlie Jacobson on 4/19/14.
//  Copyright (c) 2014 Edgy. All rights reserved.
//

#import "EGAppDelegate.h"
#import "Constants.h"
#import "AFHTTPRequestOperationManager.h"
#import <AVFoundation/AVFoundation.h>

@implementation EGAppDelegate

@synthesize homeViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
	
	// view controllers
	self.eventsViewController = [[EventsViewController alloc] init];
	self.homeViewController = [[EGHomeViewController alloc] init];
    LoginViewController *mvc = [[LoginViewController alloc] init];
	mvc.view.backgroundColor = peterriverColor;
    mvc.delegate = self;

	// nav
	self.mainNav = [[UINavigationController alloc] initWithRootViewController:mvc];
	self.mainNav.navigationBar.translucent = NO;
	self.mainNav.navigationBar.barTintColor = edgyBlue;
    self.mainNav.navigationBar.barStyle = UIBarStyleBlack;
	
	// test speech
//	UIBarButtonItem* testSppeech = [[UIBarButtonItem alloc] initWithTitle:@"Start" style:UIBarButtonItemStylePlain target:self action:@selector(testSpeech)];
//	self.mainNav.navigationItem.rightBarButtonItem = testSppeech;

    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont fontWithName:APPFONT size:16], NSFontAttributeName, nil]];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    

	// launch window
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.window.rootViewController = self.mainNav;
	[self.window makeKeyAndVisible];
    

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

# pragma mark - Log In
- (void)didLogInSuccessfullyWithUsername:(NSString *)username
{
	[self.mainNav setViewControllers:[NSArray arrayWithObject:self.homeViewController] animated:YES];
}

- (void)failedLogIn
{
	
}
@end
