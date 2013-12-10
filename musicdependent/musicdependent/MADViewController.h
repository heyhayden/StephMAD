//
//  MADViewController.h
//  musicdependent
//
//  Created by Stephanie Alexis Hayden on 10/8/13.
//  Copyright (c) 2013 Stephanie Alexis Hayden. All rights reserved.
//

#import <UIKit/UIKit.h>
#define artistComponent 0
#define albumcomponent 1

@interface MADViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *musicPicker;
@property (weak, nonatomic) IBOutlet UILabel *choiceLabel;

@property (strong, nonatomic) NSDictionary *artistAlbums;
@property (strong, nonatomic) NSArray *artists;
@property (strong, nonatomic) NSArray *albums;


@end
