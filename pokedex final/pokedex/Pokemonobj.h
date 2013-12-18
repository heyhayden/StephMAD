//
//  Pokemonobj.h
//  pokedex
//
//  Created by Technology, Arts & Meida on 11/11/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemonobj : NSObject

@property (nonatomic, strong) NSString *name; 
@property (nonatomic, strong) NSString *type; 
@property (nonatomic, strong) NSString *imageFile; 
@property (nonatomic, strong) NSArray *stats;

@end
