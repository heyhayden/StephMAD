//
//  Map ViewController.h
//  pokedex
//
//  Copyright (c) 2013 steph. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "MADAnnotation.h"

@interface Map_ViewController : UIViewController
<CLLocationManagerDelegate, MKMapViewDelegate >

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
