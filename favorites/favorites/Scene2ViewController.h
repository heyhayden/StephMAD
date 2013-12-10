//
//  Scene2ViewController.h
//  favorites
//
//  Created by Technology, Arts & Meida on 11/27/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Favorite.h"


@interface Scene2ViewController : UIViewController
<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *userBook;
@property (weak, nonatomic) IBOutlet UITextField *userAuthor;
@property(strong, nonatomic)Favorite *userInfo;


@end
