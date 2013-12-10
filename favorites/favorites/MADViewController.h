//
//  MADViewController.h
//  favorites
//
//  Created by Technology, Arts & Meida on 11/27/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Favorite.h"
@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *bookLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (strong, nonatomic)Favorite *user;

@end
