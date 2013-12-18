//
//  PokeDetailViewController.m
//  pokedex
//
//  Created by Technology, Arts & Meida on 11/11/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "PokeDetailViewController.h"

@interface PokeDetailViewController ()

@end

@implementation PokeDetailViewController

@synthesize recipePhoto;
@synthesize prepTimeLabel;
@synthesize ingredientTextView;
@synthesize pokemon;



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
    
    self.title = pokemon.name;
    self.prepTimeLabel.text = pokemon.type;
    self.recipePhoto.image = [UIImage imageNamed:pokemon.imageFile];
    
    NSMutableString *ingredientText = [NSMutableString string];
    for (NSString* stats in pokemon.stats) {
        [ingredientText appendFormat:@"%@\n", stats];
    }
    self.ingredientTextView.text = ingredientText;
    
}

- (void)viewDidUnload
{
    [self setRecipePhoto:nil];
    [self setPrepTimeLabel:nil];
    [self setIngredientTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
