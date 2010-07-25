//
//  SignupViewController.m
//  Signup
//
//  Created by Parveen Kaler on 10-07-24.
//  Copyright 2010 Smartful Studios Inc. All rights reserved.
//

#import "SignupViewController.h"
#import "TextEditCell.h"

@implementation SignupViewController
@synthesize tableView, loadCell;

- (void)viewDidUnload {
  [super viewDidUnload];
  self.tableView = nil;
}


- (void)dealloc {
  [tableView release];
  [super dealloc];
}

#pragma mark TableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
  return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
  static NSString *CellIdentifier = @"TextEditCell";
  TextEditCell *cell = (TextEditCell*)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil)
  {
    [[NSBundle mainBundle] loadNibNamed:@"TextEditCell" owner:self options:nil];
    cell = loadCell;
    self.loadCell = nil;
  }
  
  if (indexPath.row == 0)
    cell.textField.placeholder = @"email";
  else
    cell.textField.placeholder = @"password";
  
  return cell;
}

@end
