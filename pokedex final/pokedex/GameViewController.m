//
//  GameViewController.m
//  pokedex
//
//  Created by Technology, Arts & Meida on 12/3/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (void)viewDidLoad
{
    
    turns = 0;
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)updateLevel:(UISegmentedControl *)sender {
    guessField.text = [NSString stringWithFormat:@" "];
    resultLabel.text = [NSString stringWithFormat:@" "];
    playAgain.text = [NSString stringWithFormat:@" "];
    _image.image=[UIImage imageNamed:@"guess-number.jpg"];
    turns = 0;
    if( guessField.text.length != 0 )
    {
        
        randomNum = arc4random() % 10;
        
    }
    else if ( guessField.text.length == 0 )
    {
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
        if ([guessField.text intValue] != randomNum) {
            if ([guessField.text intValue] > randomNum) {
            
                _image.image=[UIImage imageNamed:@"arrow-down.png"];
                resultLabel.text = [NSString stringWithFormat:@" "];
                playAgain.text = [NSString stringWithFormat:@" Try Again. "];
                turns ++;
            }
            else if ([guessField.text intValue] < randomNum){
               
                
                _image.image=[UIImage imageNamed:@"arrow_up.png"];
                resultLabel.text = [NSString stringWithFormat:@" "];
                playAgain.text = [NSString stringWithFormat:@" Try Again. "];
                turns ++;
                
            }
            
            
        }
        else if ([guessField.text intValue] == randomNum){
            
            turns ++;
            
            if([guessField.text intValue] == 0){
                mons = [NSString stringWithFormat:  @"which I guess is no pokemon at all. Sad day!"];
            }
            
            if([guessField.text intValue] == 1){
                _image.image=[UIImage imageNamed:@"bulbasaur6.jpg"];
                
                mons = [NSString stringWithFormat:@"Bulbasaur"];
                
            }
            if([guessField.text intValue] == 2){
                _image.image=[UIImage imageNamed:@"ivysaur.jpg"];
                
                mons = [NSString stringWithFormat:@"Ivysaur"];
                
                
            }
            if([guessField.text intValue] == 3){
                _image.image=[UIImage imageNamed:@"venusaur.jpg"];
                mons = [NSString stringWithFormat:@"Venusaur"];
                
            }
            if([guessField.text intValue] == 4){
                _image.image=[UIImage imageNamed:@"charmander.jpg"];
                mons = [NSString stringWithFormat:@"Charmander"];
                
                
            }
            if([guessField.text intValue] == 5){
                _image.image=[UIImage imageNamed:@"charmeleon.jpg"];
                mons = [NSString stringWithFormat:@"Charmeleon"];
                
                
            }
            if([guessField.text intValue] == 6){
                _image.image=[UIImage imageNamed:@"charizard.jpg"];
                mons = [NSString stringWithFormat:@"Charizard"];
                
                
            }
            if([guessField.text intValue] == 7){
                _image.image=[UIImage imageNamed:@"squirtle.jpg"];
                mons = [NSString stringWithFormat:@"Squirtle"];
                
                
            }
            if([guessField.text intValue] == 8){
                _image.image=[UIImage imageNamed:@"wartortle.jpg"];
                mons = [NSString stringWithFormat:@"Wartortle"];
                
                
            }
            if([guessField.text intValue] == 9){
                _image.image=[UIImage imageNamed:@"blastoise.jpg"];
                mons = [NSString stringWithFormat:@"Blastoise"];
                
                
            }
            
            resultLabel.text = [NSString stringWithFormat:@"Congrats, you got pokemon # %i, %@. ", randomNum, mons];
            playAgain.text = [NSString stringWithFormat:@"Enter New Number to Reset and Play Again"];
            
            randomNum = arc4random() % 10;
            turns = 0;
            
            [self->guessField resignFirstResponder];
        }
        else
        {
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"you did not enter a guess!" message:nil delegate:self cancelButtonTitle:@"try again" otherButtonTitles:nil, nil];
            [alert show];
            
            [self->guessField resignFirstResponder];
        }
  
    }

}

@end

