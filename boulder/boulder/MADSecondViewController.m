//
//  MADSecondViewController.m
//  boulder
//
//  Created by Technology, Arts & Meida on 11/28/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "MADSecondViewController.h"

@interface MADSecondViewController ()

@end

@implementation MADSecondViewController

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

- (IBAction)submitQuestion:(UIButton *)sender {
    NSString *recipients = @"mailto:stephanie.hayden@colorado.edu?subject=Question from Boulder app";
    NSString *body = [NSString stringWithFormat:@"&body=%@ from %@ %@", _questionTextview.text, _nameTextfield.text, _emailTextfield.text];
    NSString *email = [NSString stringWithFormat:@"%@%@", recipients, body];
    NSLog(email);
    email = [email stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]; //returns a legal URL string
    //opens the mail app
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:email]];
    
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

@end
