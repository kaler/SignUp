//
//  TextEditCell.m
//  Signup
//
//  Created by Parveen Kaler on 10-07-24.
//  Copyright 2010 Smartful Studios Inc. All rights reserved.
//

#import "TextEditCell.h"


@implementation TextEditCell
@synthesize textField;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
  if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
  }
  return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
  
  [super setSelected:selected animated:animated];
  
  // Configure the view for the selected state
}


- (void)dealloc {
  [textField release];
  [super dealloc];
}


@end
