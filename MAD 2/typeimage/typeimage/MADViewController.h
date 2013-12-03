//
//  MADViewController.h
//  typeimage
//
//  Created by Technology, Arts & Meida on 10/2/13.
//
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *sportImage;
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
- (IBAction)textFieldDoneEditing:(UITextField *)sender;

@end
