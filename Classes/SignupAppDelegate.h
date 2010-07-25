//
//  SignupAppDelegate.h
//  Signup
//
//  Created by Parveen Kaler on 10-07-24.
//  Copyright Smartful Studios Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SignupViewController;

@interface SignupAppDelegate : NSObject <UIApplicationDelegate> {
  UIWindow *window;
  UINavigationController *navigationController;
  SignupViewController *signupViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

