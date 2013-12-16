//
//  MADViewController.h
//  animation
//
//  Created by Technology, Arts & Meida on 12/15/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
- (IBAction)sliderMoved:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
