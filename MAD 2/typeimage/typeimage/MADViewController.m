//
//  MADViewController.m
//  typeimage
//
//  Created by Technology, Arts & Meida on 10/2/13.
//
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    
     if(sender.tag==1)
    {
        _sportImage.image=[UIImage imageNamed:@"helvetica2.png"]; NSString *message = [[NSString alloc] initWithFormat:@"%@, don't you know that Arial is simply Helvetica's ugly cousin?", _nameField.text];
        _messageLabel.text=message;}
        if(sender.tag==2) {
            _sportImage.image=[UIImage imageNamed:@"helvetica1.png"]; NSString *message = [[NSString alloc] initWithFormat:@"Helvetica is pretty classy, %@. Good choice.", _nameField.text];
            _messageLabel.text=message;}
}

- (IBAction)textFieldDoneEditing:(UITextField *)sender {
 
        [sender resignFirstResponder];

}

@end
