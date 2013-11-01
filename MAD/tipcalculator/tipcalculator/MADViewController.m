//
//  MADViewController.m
//  tipcalculator
//
//  Created by Technology, Arts & Meida on 10/7/13.
//
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad { [super viewDidLoad];
    _checkAmount.delegate=self; _tipPercent.delegate=self; _people.delegate=self;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES; }
-(void)updateTipTotals{
    
    float amount=[_checkAmount.text floatValue];
    float pct=[_tipPercent.text floatValue];
    int numberOfPeople=[_people.text intValue];
    pct=pct/100;     float tip=amount*pct;
    float total=amount+tip;
    float personTotal=0; 
    if (numberOfPeople>0)
    {
        personTotal=total/numberOfPeople; }
   else {
       
      
       UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"Warning"
           message: @"The number of people must be greater than 0"
          delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
        [alertView show]; 
       }
        NSNumberFormatter *currencyFormatter=[[NSNumberFormatter alloc]init];
    [currencyFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
   
    _tipDue.text=[currencyFormatter stringFromNumber:[NSNumber
numberWithFloat:tip]];
    _totalDue.text=[currencyFormatter stringFromNumber:[NSNumber
                                                        numberWithFloat:total]]; _totalDuePerPerson.text=[currencyFormatter
                                                                                                          stringFromNumber:[NSNumber numberWithFloat:personTotal]];

}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    [self updateTipTotals]; }

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if (buttonIndex==1) //OK button
    {
        _people.text=[NSString stringWithFormat:@"1"];
    [self updateTipTotals]; }
}

@end
