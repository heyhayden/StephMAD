//
//  MADViewController.m
//  countries
//
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "DetailViewController.h"
#import "MADViewController.h"
#import "ContinentInfoViewController.h"
@interface MADViewController ()
{ NSMutableDictionary *continentData; }

@end

@implementation MADViewController

- (void)viewDidLoad
{

	[super viewDidLoad];
    NSBundle *bundle=[NSBundle mainBundle];
    NSString *plistPath=[bundle pathForResource:@"continents" ofType:@"plist"];
    NSMutableDictionary *dictionary=[[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    continentData=dictionary;}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [continentData count]; //returns the number of continents
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"countrysegue"]) { DetailViewController
        *countryViewController=segue.destinationViewController;
NSIndexPath *indexPath=[self.tableView indexPathForCell:sender];
        NSArray *rowData=[continentData allKeys];
        countryViewController.title=[rowData objectAtIndex:indexPath.row];
        countryViewController.countryList=[continentData objectForKey:countryViewController.title];
        
        if ([segue.identifier isEqualToString:@"continentsegue"]) { ContinentInfoViewController
            *infoViewController=segue.destinationViewController; NSIndexPath
            *indexPath=[self.tableView indexPathForSelectedRow];
            NSArray *rowData=[continentData allKeys]; infoViewController.name=[rowData
                                                                               objectAtIndex:indexPath.row];
            infoViewController.number=[NSString stringWithFormat:@"%d",
                                       [[continentData objectForKey:infoViewController.name] count]]; }
        
    } }

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    NSArray *rowData=[continentData allKeys]; //creates an array with all keys from our dictionary
    cell.textLabel.text=[rowData objectAtIndex:indexPath.row];
    //sets the text of the cell with the row being requested
    return cell; }

@end
