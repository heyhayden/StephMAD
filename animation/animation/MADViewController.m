//
//  MADViewController.m
//  animation
//

//  Copyright (c) 2013 steph. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()
{
    CGPoint delta; 
    NSTimer *timer; 
    float ballRadius;
    CGPoint translation;
    float angle;
}

@end

@implementation MADViewController


-(IBAction)changeSliderValue
{
    _sliderLabel.text=[NSString stringWithFormat:@"%.2f", _slider.value];
  
    timer = [NSTimer scheduledTimerWithTimeInterval:_slider.value
            
                                             target:self
                                           selector:@selector(onTimer) 
                                           userInfo:nil
                                            repeats:YES]; 
}

-(void) onTimer {
    [UIView beginAnimations:@"my_own_animation" context:nil];
    [UIView animateWithDuration:_slider.value delay:0
   options: UIViewAnimationOptionCurveEaseOut
        animations:^{_imageView.transform = CGAffineTransformMakeScale(angle,angle);
            _imageView.center = CGPointMake(
                                            _imageView.center.x + delta.x,
                                            _imageView.center.y + delta.y);
     
                         angle += 0.02; 
                         if (angle>2*M_PI)
                             angle=0;}
                     
                     completion:NULL];
                  
    [UIView commitAnimations];

  
    if (_imageView.center.x > self.view.bounds.size.width - ballRadius || _imageView.center.x < ballRadius)
        delta.x = -delta.x;
    if (_imageView.center.y > self.view.bounds.size.height - ballRadius || _imageView.center.y < ballRadius)
        delta.y = -delta.y;}


- (void)viewDidLoad
{
    
    translation=CGPointMake(0.0, 0.0);
    ballRadius=_imageView.frame.size.width/2;
    delta=CGPointMake(12.0, 4.0); [self changeSliderValue]; [super viewDidLoad];
}
-(IBAction) sliderMoved:(id) sender {
    [timer invalidate]; 
    [self changeSliderValue]; }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}


@end
