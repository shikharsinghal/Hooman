//
//  MapPin.h
//  Partiko
//
//  Created by Shikhar Singhal on 30/10/15.
//  Copyright © 2015 Shikhar Singhal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapPin : NSObject <MKAnnotation>

@property (nonatomic,assign) CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString* title;
@property (nonatomic,copy) NSString* subtitle;


@end
