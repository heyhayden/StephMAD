//
//  MADViewController.h
//  helloname
//
//  Created by Steph Hayden on 9/25/13.
//  Copyright (c) 2013 Steph Hayden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UILabel *messageField;
- (IBAction)textFieldDoneEditing:(UITextField *)sender;

@end
