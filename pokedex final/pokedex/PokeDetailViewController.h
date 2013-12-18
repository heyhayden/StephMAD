//
//  PokeDetailViewController.h
//  pokedex
//
//  Created by Technology, Arts & Meida on 11/11/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pokemonobj.h"

@interface PokeDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recipePhoto;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UITextView *ingredientTextView;
@property (weak, nonatomic) IBOutlet UILabel *index;

@property (nonatomic, strong) Pokemonobj *pokemon;

@end
