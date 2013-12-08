//
//  GameViewController.h
//  pokedex
//
//  Created by Technology, Arts & Meida on 12/3/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController
<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *boulderSpinner;
@end
