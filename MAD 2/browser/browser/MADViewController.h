//
//  MADViewController.h
//  browser
//
//  Created by Technology, Arts & Meida on 10/4/13.
//
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
<UIWebViewDelegate, UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;

- (IBAction)bookmarkItemTapped:(id)sender;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

@end
