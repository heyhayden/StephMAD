//
//  WebViewController.m
//  boulder
//
//  Created by Technology, Arts & Meida on 11/28/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	_boulderWebView.delegate=self;
    [self loadWebPageWithString:@"http://www.bouldercolorado.gov/"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    [_boulderSpinner startAnimating];}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [_boulderSpinner stopAnimating];}

-(void)loadWebPageWithString:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_boulderWebView loadRequest:request];
}

@end
