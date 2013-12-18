//
//  MADAnnotation.h
//  pokedex
//
//  Created by Technology, Arts & Meida on 12/18/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface MADAnnotation : NSObject <MKAnnotation>

@property (nonatomic, assign)CLLocationCoordinate2D coordinate;
@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *subtitle;
@property (nonatomic, copy) UIImageView * leftCalloutAccessoryView;

-(id)initWithCoordinate:(CLLocationCoordinate2D)coor;
-(void) moveAnnotation:(CLLocationCoordinate2D)newCoordinate;

@end