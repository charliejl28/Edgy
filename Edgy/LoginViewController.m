//
//  MainViewController.m
//  TechnoGerms.com
//
//  Created by Ammad iOS on 04/10/2013.
//  Copyright (c) 2013 TechnoGerms. All rights reserved.
//

#import "LoginViewController.h"
#import "EGAppDelegate.h"
#import "AFHTTPRequestOperationManager.h"

NSString *client_id = @"592463406815-8dggmgri6khdm4ahp9j18s7ime4aqjkj.apps.googleusercontent.com";
NSString *secret = @"JVCBLsP9aRefBaLGpXqcyElO";
NSString *callback =  @"http://edgyapp.herokuapp.com/auth/google/callback";

NSString *scope = @"https://www.googleapis.com/auth/userinfo.profile+https://www.googleapis.com/auth/userinfo.email+https://www.googleapis.com/auth/calendar+https://www.googleapis.com/auth/drive+https://www.google.com/m8/feeds+https://mail.google.com/";

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize webview,isLogin,isReader;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *url = [NSString stringWithFormat:@"https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=%@&redirect_uri=%@&scope=%@",client_id,callback,scope];
    webview = [[UIWebView alloc] initWithFrame:self.view.frame];
    webview.delegate = self;
    [self.view addSubview:webview];
    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
}


- (BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType {
    if ([[[request URL] host] isEqualToString:@"edgyapp.herokuapp.com"]) {
        // Extract oauth_verifier from URL query
        NSString* verifier = nil;
        NSArray* urlParams = [[[request URL] query] componentsSeparatedByString:@"&"];
        for (NSString* param in urlParams) {
            NSArray* keyValue = [param componentsSeparatedByString:@"="];
            NSString* key = [keyValue objectAtIndex:0];
            if ([key isEqualToString:@"code"]) {
                verifier = [keyValue objectAtIndex:1];
                NSLog(@"verifier %@",verifier);
                break;
            }
        }
        
        if (verifier) {
            AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
            NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
            [params setObject:verifier forKey:@"code"];

            [params setObject:client_id forKey:@"client_id"];
            [params setObject:secret forKey:@"client_secret"];
            [params setObject:callback forKey:@"redirect_uri"];
            [params setObject:@"authorization_code" forKey:@"grant_type"];
   
            [manager POST:@"https://accounts.google.com/o/oauth2/token" parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject)
             {
                NSLog(@"JSON: %@",  [responseObject objectForKey:@"access_token"] );
        
                 AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
                 NSString *urlString = [NSString stringWithFormat:@"http://edgyapp.herokuapp.com/auth/google-iOS?access_token=%@", [responseObject objectForKey:@"access_token"]];
                 [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject)
                  {
                      NSLog(@"JSON: %@", [responseObject objectForKey:@"error"]);
                      if ( [responseObject objectForKey:@"error"] == [NSNumber numberWithBool:NO] ){
                          [[NSNotificationCenter defaultCenter] postNotificationName:@"showMainScreen" object:nil];

                          NSLog(@"logged in successfully");
						  [self.delegate didLogInSuccessfullyWithUsername:@"test"];
                          
                      }
                      else{
                          NSString *message = [NSString stringWithFormat:@"There was an error %@" ,responseObject];
                          
                          UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:message delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
                          [alertView show];
                          
                      }
                  } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                      NSLog(@"Error: %@", error);
                  }];
                 
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                 NSLog(@"Error: %@", error);
             }];
            
        } else {

        }
        [webView removeFromSuperview];
        return NO;
    }
    return YES;
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [receivedData appendData:data];
    NSLog(@"verifier %@",receivedData);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                    message:[NSString stringWithFormat:@"%@", error]
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

@end