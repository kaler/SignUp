//
//  SignupViewController.h
//  Signup
//
//  Created by Parveen Kaler on 10-07-24.
//  Copyright 2010 Smartful Studios Inc. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SignupViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
  IBOutlet UITableView *tableView;
}

@property (nonatomic, retain) UITableView *tableView;

@end
