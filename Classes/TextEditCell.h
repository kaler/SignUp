//
//  TextEditCell.h
//  Signup
//
//  Created by Parveen Kaler on 10-07-24.
//  Copyright 2010 Smartful Studios Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextEditCell : UITableViewCell {
  IBOutlet UITextField *textField;
}

@property (nonatomic, retain) UITextField *textField;

@end
