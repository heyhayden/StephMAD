//
//  DetailViewController.m
//  countries
//
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "DetailViewController.h"
#import "CountryViewController.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

   // self.navigationItem.rightBarButtonItem=self.editButtonItem;

}
- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];

}

- (IBAction)unwindCountry:(UIStoryboardSegue *)segue {
    if ([segue.identifier isEqualToString:@"doneSegue"]) { CountryViewController *source=[segue sourceViewController]; if (source.addedCountry!=nil) {
        [_countryList addObject:source.addedCountry];
        [self.tableView reloadData]; }
    } }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1; }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_countryList count]; }


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text=[_countryList objectAtIndex:indexPath.row];
    return cell; }

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row=[indexPath row]; 
    if (editingStyle == UITableViewCellEditingStyleDelete) {
    [_countryList removeObjectAtIndex:row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
} 

}
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath{
    NSUInteger fromRow=[fromIndexPath row];
    NSUInteger toRow=[toIndexPath row]; 
    NSString *moveCountry=[_countryList objectAtIndex:fromRow];
    [_countryList removeObjectAtIndex:fromRow];
    [_countryList insertObject:moveCountry atIndex:toRow];

}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
        // Return NO if you do not want the item to be re-orderable.
        return YES; }

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
