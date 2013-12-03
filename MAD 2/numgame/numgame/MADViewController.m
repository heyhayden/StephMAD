//
//  MADViewController.m
//  numgame
//
//
// all code based off the random number guessing tutorial: http://www.youtube.com/watch?v=TGEJdoR-8vY

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    _levelControl.selectedSegmentIndex = -1;
    
    turns = 0;
      [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)updateLevel:(UISegmentedControl *)sender {
        guessField.text = [NSString stringWithFormat:@" "];
       resultLabel.text = [NSString stringWithFormat:@" "];
       playAgain.text = [NSString stringWithFormat:@" "];
    _message.text = [NSString stringWithFormat:@" "];
    _image.image=[UIImage imageNamed:@"guess-number.jpg"];
    turns = 0; 
    if( guessField.text.length != 0 )
    {
    if (_levelControl.selectedSegmentIndex==0){
        randomNum = arc4random() % 10;
        range.text = [NSString stringWithFormat:@" Range 1-10 "];}
    else if(_levelControl.selectedSegmentIndex==1){
        randomNum = arc4random() % 100;
        range.text = [NSString stringWithFormat:@" Range 1-100 "];
    }
        
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"you did not enter a guess!" message:nil delegate:self cancelButtonTitle:@"try again" otherButtonTitles:nil, nil];
        [alert show];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)enterGuess:(id)sender{

    if( guessField.text.length != 0 )
    {
    if (_levelControl.selectedSegmentIndex==0){
     range.text = [NSString stringWithFormat:@" Range 1-10 "];
        if ([guessField.text intValue] != randomNum) {
            if ([guessField.text intValue] > randomNum) {
                 _message.text= [NSString stringWithFormat: @"Nope. Guess lower. "];
                _image.image=[UIImage imageNamed:@"arrow-down.png"];
                  resultLabel.text = [NSString stringWithFormat:@" "];
                 playAgain.text = [NSString stringWithFormat:@" Try Again. "];
                turns ++;
            }
            else if ([guessField.text intValue] < randomNum){
                _message.text= [NSString stringWithFormat:  @"Nope. Guess higher."];
                
                _image.image=[UIImage imageNamed:@"arrow_up.png"];
                resultLabel.text = [NSString stringWithFormat:@" "];
                 playAgain.text = [NSString stringWithFormat:@" Try Again. "];
                turns ++;
                
            }
            
                
            }
    else if ([guessField.text intValue] == randomNum){
    
        turns ++;
        _message.text= [NSString stringWithFormat:  @"Congrats! You took %i turns. Can you do better?", turns];
    _image.image=[UIImage imageNamed:@"7466254-winner-stamp.jpg"];
        
        resultLabel.text = [NSString stringWithFormat:@"Winning Number: %i", randomNum];
        playAgain.text = [NSString stringWithFormat:@"Enter New Number to Reset and Play Again"];
    
            randomNum = arc4random() % 10;
                turns = 0;}
      
    
    }
    else if(_levelControl.selectedSegmentIndex==1){
        range.text = [NSString stringWithFormat:@" Range 1-100 "];
        if ([guessField.text intValue] != randomNum) {
            if ([guessField.text intValue] > randomNum) {
                _message.text= [NSString stringWithFormat: @"Nope. Guess lower. "];
                _image.image=[UIImage imageNamed:@"arrow-down.png"];
                resultLabel.text = [NSString stringWithFormat:@" "];
                playAgain.text = [NSString stringWithFormat:@" Try Again. "];
                turns ++;
            }
            else if ([guessField.text intValue] < randomNum){
                _message.text= [NSString stringWithFormat:  @"Nope. Guess higher."];
                
                _image.image=[UIImage imageNamed:@"arrow_up.png"];
                resultLabel.text = [NSString stringWithFormat:@" "];
                playAgain.text = [NSString stringWithFormat:@" Try Again. "];
                turns ++;
                
            }
            
            
        }
        else if ([guessField.text intValue] == randomNum){
            
            turns ++;
            _message.text= [NSString stringWithFormat:  @"Congrats! You took %i turns. Can you do better?", turns];
            _image.image=[UIImage imageNamed:@"7466254-winner-stamp.jpg"];
            
            resultLabel.text = [NSString stringWithFormat:@"Winning Number: %i", randomNum];
            playAgain.text = [NSString stringWithFormat:@"Enter New Number to Reset and Play Again"];
            
            randomNum = arc4random() % 100;
            turns = 0;}
        
    }
    }
    else
    {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"you did not enter a guess!" message:nil delegate:self cancelButtonTitle:@"try again" otherButtonTitles:nil, nil];
        [alert show];
    }


 

}


@end
