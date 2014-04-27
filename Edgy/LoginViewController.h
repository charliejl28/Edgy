//
//  MainViewController.h
//  TechnoGerms.com
//
//  Created by Ammad iOS on 04/10/2013.
//  Copyright (c) 2013 TechnoGerms. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginViewControllerDelegate;

@interface LoginViewController : UIViewController <UIWebViewDelegate>
{
    IBOutlet UIWebView *webview;
    NSMutableData *receivedData;
}

@property (nonatomic, retain) IBOutlet UIWebView *webview;
@property (nonatomic, retain) NSString *isLogin;
@property (assign, nonatomic) Boolean isReader;

@property (nonatomic) id<LoginViewControllerDelegate> delegate;

@end

@protocol LoginViewControllerDelegate

- (void) didLogInSuccessfullyWithUsername: (NSString*) username;
- (void) failedLogIn;

@end



