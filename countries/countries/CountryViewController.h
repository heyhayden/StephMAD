//
//  CountryViewController.h
//  countries
//
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
@interface CountryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *countryTextfield;
@property (copy, nonatomic) NSString *addedCountry;


@end
