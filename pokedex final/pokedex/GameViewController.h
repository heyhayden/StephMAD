//
//  GameViewController.h
//  pokedex
//
//  Created by Technology, Arts & Meida on 12/3/13.
//  Copyright (c) 2013 steph. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController
<UITextFieldDelegate>
{
    int randomNum;
    int turns;
    id mons;
    IBOutlet UITextField *guessField;
    IBOutlet UILabel  *resultLabel;
    IBOutlet UILabel  *playAgain;
    
    
}
-(IBAction)enterGuess:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *image;





@end
