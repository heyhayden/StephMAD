//
//  ContinentInfoViewController.h
//  countries
//
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContinentInfoViewController : UITableViewController
@property (copy, nonatomic) NSString *name;
@property (weak, nonatomic) IBOutlet UILabel *continentName;
@property (copy, nonatomic) NSString *number;
@property (weak, nonatomic) IBOutlet UILabel *countryNumber;
@end
