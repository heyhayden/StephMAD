//
//  DetailViewController.h
//  countries
//
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountryViewController.h"
@interface DetailViewController : UITableViewController
<UITableViewDataSource, UITableViewDelegate>

@property(strong,nonatomic)NSMutableArray *countryList;
@end
