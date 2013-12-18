//
//  MADAppDelegate.h
//  pokedex
//
//  Created by Technology, Arts & Meida on 11/11/13.
//  Copyright (c) 2013 steph. All rights reserved.

#import <UIKit/UIKit.h>
#import "MADViewController.h"
@class GameViewController;
@interface MADAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GameViewController *viewController;

@end
