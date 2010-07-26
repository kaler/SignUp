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

- (void)viewDidUnload 
{
  [super viewDidUnload];
  self.tableView = nil;
}

- (void)dealloc 
{
  [tableView release];
  [super dealloc];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event 
{
  for (int i = 0; i < 2; ++i) 
  {
    TextEditCell* cell = (TextEditCell*)[self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:i 
                                                                                                 inSection:0]];
    if ([cell.textField isFirstResponder]) 
    {
      [cell.textField resignFirstResponder];
      break;
    }
  }
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
  
  // TODO: Refactor this initialization code into the TextEditCell class
  if (indexPath.row == 0)
  {
    cell.textField.placeholder = @"Email";
    cell.textField.keyboardType = UIKeyboardTypeEmailAddress;
    cell.textField.returnKeyType = UIReturnKeyNext;
  }
  else if (indexPath.row == 1)
  {
    cell.textField.placeholder = @"Password";
    cell.textField.returnKeyType = UIReturnKeyGo;
    cell.textField.secureTextEntry = YES;
  }
  
  cell.textField.tag = indexPath.row;
  cell.textField.delegate = self;
  cell.textField.autocorrectionType = UITextAutocorrectionTypeNo;
  cell.textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
  cell.textField.enablesReturnKeyAutomatically = YES;
  
  return cell;
}

-(void)textFieldDidEndEditing:(UITextField *)textField 
{
  if (textField.tag == 0)
  {
    NSLog(@"Email: %@", textField.text);
  }
  else if (textField.tag == 1)
  {
    NSLog(@"Password: %@", textField.text);
  }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
  [textField resignFirstResponder];
  
  if (textField.tag == 0)
  {
    TextEditCell* cell = (TextEditCell*)[self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:1 
                                                                                                 inSection:0]];
    [cell.textField becomeFirstResponder];
    
    NSLog(@"Email: %@", textField.text);
  }
  else if (textField.tag == 1)
  {
    NSLog(@"Password: %@", textField.text);
  }
  
  return NO;
}


@end
