//
//  MADViewController.m
//  browser
//
//  Created by Technology, Arts & Meida on 10/4/13.
//
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
     _webView.delegate=self; //sets the controller as the delegate of the UIWebView instance.
     [self loadWebPageWithString:@"http://tam.colorado.edu"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadWebPageWithString:(NSString *)urlString
{
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
[_webView loadRequest:request];

}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"Error loading web page"
                                                      message:[error localizedDescription] 
                                                     delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alertView show];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger) buttonIndex
{
    if(buttonIndex==0) {
        [self loadWebPageWithString:@"http://atlas.colorado.edu"]; }
    else if (buttonIndex==1) {
        [self loadWebPageWithString:@"http://tam.colorado.edu"]; }
    else if (buttonIndex==2) {
        [self loadWebPageWithString:@"http://www.colorado.edu"]; }
}


- (IBAction)bookmarkItemTapped:(id)sender {
    UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:nil
                                                          delegate:self cancelButtonTitle:@"Cancel"
                                            destructiveButtonTitle:nil otherButtonTitles:@"ATLAS", @"TAM", @"CU", nil];
    [actionSheet showFromToolbar:_toolbar]; }

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [_spinner startAnimating];
    //sends the startAnimating message to the spinner
}
@end
