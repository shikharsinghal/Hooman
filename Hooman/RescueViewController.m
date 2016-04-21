//
//  RescueViewController.m
//  Hooman
//
//  Created by Shikhar Singhal on 11/03/16.
//  Copyright © 2016 Shikhar Singhal. All rights reserved.
//

#import "RescueViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MapPin.h"

@interface RescueViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end

@implementation RescueViewController

- (void)viewDidLoad {
    [super viewDidLoad];    // Do any additional setup after loading the view.
    
    //MKCoordinateRegion eventRegion;
    
    CLLocationCoordinate2D eventCoordinate, eventCoordinate2;
    eventCoordinate.latitude =28.5444;
    eventCoordinate.longitude =77.2725;
    eventCoordinate2.latitude =28.0000;
    eventCoordinate2.longitude =77.0000;
    
    // Do any additional setup after loading the view.
    MKCoordinateRegion eventRegion;
    
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005f;
    span.longitudeDelta = 0.005f;
    
    eventRegion.center = eventCoordinate;
    eventRegion.span =span;
    [_mapView setRegion:eventRegion animated:YES];
    MapPin *eventPin = [MapPin alloc];
    eventPin.coordinate = eventCoordinate;
    eventPin.title = @"sick and Malnurished";
    eventPin.subtitle = @"Resscue requested at 5:57 PM, 5th Feb 2016";
    [self.mapView addAnnotation:eventPin];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
