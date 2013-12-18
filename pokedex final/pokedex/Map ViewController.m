//
//  Map ViewController.m
//  pokedex
//
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "Map ViewController.h"
#import "MADAnnotation.h"
@interface Map_ViewController ()

@end

#define CHARMANDER_LATITUDE 40.0078429;
#define CHARMANDER_LONGITUDE -105.26966709999999;

#define CHARMELEON_LATITUDE 40.0104104;
#define CHARMELEON_LONGITUDE -105.28965619999997;

#define CHARIZARD_LATITUDE 40.0064377;
#define CHARIZARD_LONGITUDE -105.27301119999998;

#define BULBASAUR_LATITUDE 40.0096216;
#define BULBASAUR_LONGITUDE -105.27282120000001;

#define IVYSAUR_LATITUDE 40.0108876;
#define IVYSAUR_LONGITUDE -105.27389820000002;

#define VENUSAUR_LATITUDE 40.0079411;
#define VENUSAUR_LONGITUDE -105.27507350000002;

#define SQUIRTLE_LATITUDE 40.0043601;
#define SQUIRTLE_LONGITUDE -105.26956860000001;

#define WARTORTLE_LATITUDE 40.0104104;
#define WARTORTLE_LONGITUDE -105.26633140000001;

#define BLASTOISE_LATITUDE 40.0104961;
#define BLASTOISE_LONGITUDE -105.26594160000002;


#define THE_SPAN 0.05f;

@implementation Map_ViewController
{
    
CLLocationManager *locationManager;
MADAnnotation *annotation;


}

@synthesize mapView;


- (void)viewDidLoad {
    
    

    mapView.delegate=self;
    mapView.mapType=MKMapTypeHybrid;
    locationManager=[[CLLocationManager alloc] init]; locationManager.delegate=self; locationManager.desiredAccuracy=kCLLocationAccuracyBest; locationManager.distanceFilter=kCLDistanceFilterNone;
    
    
    [locationManager startUpdatingLocation];

    
    
    
    [super viewDidLoad];
    // Create the region
    MKCoordinateRegion myRegion;
    
    //Center
    CLLocationCoordinate2D center;
    center.latitude = BULBASAUR_LATITUDE;
    center.longitude = BULBASAUR_LONGITUDE;
    
    //Span
    MKCoordinateSpan span;
    span.latitudeDelta = THE_SPAN;
    span.longitudeDelta = THE_SPAN;
    
    myRegion.center = center;
    myRegion.span=span;
    
    //Set our mapView
    [mapView setRegion:myRegion animated:YES];
    
 
    
    NSMutableArray *annotations = [[NSMutableArray alloc]init];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"PokeLocations" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *anns = [dict objectForKey:@"PokeLocations"];
    NSLog(@"read1");
    
    for(int i = 0; i < [anns count]; i++) {
        NSLog(@"read2");
        float realLatitude = [[[anns objectAtIndex:i] objectForKey:@"Latitude"] floatValue];
        float realLongitude = [[[anns objectAtIndex:i] objectForKey:@"Longitude"] floatValue];
        NSLog(@"read3");
        
        MADAnnotation *myAnnotation = [[MADAnnotation alloc] init];
        CLLocationCoordinate2D theCoordinate;
        theCoordinate.latitude = realLatitude;
        theCoordinate.longitude = realLongitude;
        myAnnotation.coordinate = theCoordinate;
        myAnnotation.title = [[anns objectAtIndex:i] objectForKey:@"Title"];
        myAnnotation.subtitle = [[anns objectAtIndex:i] objectForKey:@"Subtitle"];
        [mapView addAnnotation:myAnnotation];
        [annotations addObject:myAnnotation];
        //[myAnnotation release];
    }

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
   
    
    MKCoordinateSpan span;
    span.latitudeDelta=.001;
    span.longitudeDelta=.001;
    MKCoordinateRegion region;
    region.center= manager.location.coordinate;
    region.span=span;
    [mapView setRegion:region animated:YES];
    if(annotation){
        [annotation moveAnnotation:manager.location.coordinate];
    }
    else {
        annotation=[[MADAnnotation alloc] initWithCoordinate:manager.location.coordinate];
        [mapView addAnnotation:annotation];     }
}
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSString *errorType;
    if (error.code == kCLErrorDenied) {
        errorType=@"Access Denied";
    } else errorType=@"Error";
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Error"
                        
                                                  message:errorType delegate:nil
                                        cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
    
}
- (MKAnnotationView *)mapView:(MKMapView *)map viewForAnnotation:(id <MKAnnotation>)annotation1
{
    static NSString *AnnotationViewID = @"annotationViewID";
    
    MKAnnotationView *annotationView = (MKAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:AnnotationViewID];
    
    if (annotationView == nil)
    {
        annotationView = [[MKAnnotationView alloc] initWithAnnotation:annotation1 reuseIdentifier:AnnotationViewID];
    }
    
    //Custom Pin
    annotationView.image = [UIImage imageNamed:@"pokeballsmall2.png"];
    
    //Custom Thumbnail (left side)
    UIImageView *IconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pokeballsmall.png"]];
    annotationView.leftCalloutAccessoryView = IconView;
    
    annotationView.canShowCallout = YES;
    annotationView.annotation = annotation1;
    
    return annotationView;
  }


@end
