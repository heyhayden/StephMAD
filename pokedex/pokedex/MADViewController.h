//
//  MADViewController.h
//  pokedex
//
//  Created by Technology, Arts & Meida on 11/11/13.
//  Copyright (c) 2013 steph. All rights reserved.//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) IBOutlet UITableView *tableView;
@end
