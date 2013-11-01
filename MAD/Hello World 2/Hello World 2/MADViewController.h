//
//  MADViewController.h
//  Hello World 2
//
//  Created by Steph Hayden on 9/25/13.
//  Copyright (c) 2013 Steph Hayden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *messageText;

@end
