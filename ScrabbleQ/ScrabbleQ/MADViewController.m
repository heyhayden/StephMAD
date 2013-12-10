//
//  MADViewController.m
//  ScrabbleQ
//
//  Created by Technology, Arts & Meida on 11/28/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController (){
    NSDictionary *words;
    NSArray *letters; }
@end

@implementation MADViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSBundle *bundle=[NSBundle mainBundle]; //returns a bundle object of our app
    NSString *plistPath=[bundle
                         pathForResource:@"qwordswithoutu2" ofType:@"plist"]; 
    NSDictionary *dictionary=[[NSDictionary alloc] initWithContentsOfFile:plistPath];     words=dictionary;
    NSArray *array=[[words allKeys] sortedArrayUsingSelector:@selector(compare:)]; 
    letters=array;
    self.title=@"Words"; 
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *letter=[letters objectAtIndex:section];     return letter;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *letter=[letters objectAtIndex:section]; //gets the letter for the choosen section
    NSArray *letterSection=[words objectForKey:letter]; //gets the words for that letter
    return [letterSection count]; //returns number of words in that section
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [letters count]; //each letter will be a section
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger section=[indexPath section]; 
    NSString *letter=[letters objectAtIndex:section];     NSArray *wordsSection=[words objectForKey:letter];     NSString *rowValue=[wordsSection objectAtIndex:indexPath.row];     NSString *message=[[NSString alloc] initWithFormat:@"You selected %@", rowValue];
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Row Selected"
                                                  message:message delegate:nil cancelButtonTitle:@"Yes, I did" otherButtonTitles:nil];
    [alert show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES]; }

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger section=[indexPath section];
    NSUInteger row=[indexPath row]; 
    NSString *letter=[letters objectAtIndex:section];
    NSArray *wordsSection=[words objectForKey:letter];
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text=[wordsSection objectAtIndex:row];
    return cell; }

-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    return letters; }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
