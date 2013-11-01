//
//  MADViewController.h
//  numgame
//
//  Created by Technology, Arts & Meida on 10/7/13.
//
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
{
    int randomNum;
    int turns;
    IBOutlet UITextField *guessField;
    IBOutlet UILabel  *resultLabel;
    IBOutlet UILabel  *playAgain;
    IBOutlet UILabel  *range;
  
    
}
-(IBAction)enterGuess:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *message;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UISegmentedControl *levelControl;
- (IBAction)updateLevel:(UISegmentedControl *)sender;




@end
