//
//  MADViewController.m
//  favorites
//
//  Created by Technology, Arts & Meida on 11/27/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
_user=[[Favorite alloc]init];
}

-(void)viewWillAppear:(BOOL)animated{
    _bookLabel.text=_user.favBook;
    _authorLabel.text=_user.favAuthor;
}


-(IBAction)returned:(UIStoryboardSegue *)segue {
    _bookLabel.text=_user.favBook;
    _authorLabel.text=_user.favAuthor;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
