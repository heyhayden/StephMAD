//
//  WebViewController.h
//  boulder
//
//  Created by Technology, Arts & Meida on 11/28/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *boulderWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *boulderSpinner;


@end
