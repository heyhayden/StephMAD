//
//  MADAnnotation.m
//  pokedex
//
//  Created by Technology, Arts & Meida on 12/18/13.
//  Copyright (c) 2013 steph. All rights reserved.
//

#import "MADAnnotation.h"

@implementation MADAnnotation

@synthesize coordinate, title, subtitle, leftCalloutAccessoryView;


-(id)initWithCoordinate:(CLLocationCoordinate2D)coor{ coordinate=coor;
    title=@"You are here";
    subtitle=[NSString stringWithFormat:@"Latitude: %f. Longitude: %f", coordinate.latitude, coordinate.longitude]; return self;
}


-(void) moveAnnotation:(CLLocationCoordinate2D)newCoordinate{
    [self willChangeValueForKey:@"coordinate"];         [self willChangeValueForKey:@"subtitle"];     coordinate = newCoordinate;
    subtitle = [[NSString alloc] initWithFormat:@"Latitude: %f. Longitude: %f", coordinate.latitude, coordinate.longitude];
    [self didChangeValueForKey:@"coordinate"];
    [self didChangeValueForKey:@"subtitle"];
}


@end
