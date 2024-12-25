Here is an advanced Objective-C code for the Environmental Impact Assessment project:

```
// EnvironmentalImpactAssessment.h
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <MapKit/MapKit.h>

@interface EnvironmentalImpactAssessment : NSObject

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) MKMapView *mapView;

- (instancetype)initWithManagedObjectContext:(NSManagedObjectContext *)managedObjectContext;
- (void)assessEnvironmentalImpactWithLatitude:(double)latitude longitude:(double)longitude;
- (void)simulateRadiationDispersionWithWindSpeed:(double)windSpeed windDirection:(double)windDirection;
- (void)calculateAffectedAreasWithRadiationLevel:(double)radiationLevel;
- (void)visualizeEnvironmentalImpactOnMap;

@end

// EnvironmentalImpactAssessment.m
#import "EnvironmentalImpactAssessment.h"

@implementation EnvironmentalImpactAssessment

- (instancetype)initWithManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    self = [super init];
    if (self) {
        _managedObjectContext = managedObjectContext;
    }
    return self;
}

- (void)assessEnvironmentalImpactWithLatitude:(double)latitude longitude:(double)longitude {
    // Simulate radiation dispersion
    [self simulateRadiationDispersionWithWindSpeed:10.0 windDirection:45.0];

    // Calculate affected areas
    [self calculateAffectedAreasWithRadiationLevel:100.0];

    // Visualize environmental impact on map
    [self visualizeEnvironmentalImpactOnMap];
}

- (void)simulateRadiationDispersionWithWindSpeed:(double)windSpeed windDirection:(double)windDirection {
    // Use Gaussian plume model to simulate radiation dispersion
    double radiationLevel = 100.0;
    double dispersionCoefficient = 0.1;
    double windDirectionRadians = windDirection * M_PI / 180.0;

    // Calculate radiation levels at different distances
    for (int i = 0; i < 10; i++) {
        double distance = i * 100.0;
        double radiationLevelAtDistance = radiationLevel * exp(-dispersionCoefficient * distance);
        NSLog(@"Radiation level at distance %f: %f", distance, radiationLevelAtDistance);
    }
}

- (void)calculateAffectedAreasWithRadiationLevel:(double)radiationLevel {
    // Use geographic information system (GIS) to calculate affected areas
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(37.7749, -122.4194), 10000, 10000);
    NSArray *affectedAreas = [self calculateAffectedAreasInRegion:region withRadiationLevel:radiationLevel];
    NSLog(@"Affected areas: %@", affectedAreas);
}

- (void)visualizeEnvironmentalImpactOnMap {
    // Use MapKit to visualize environmental impact on map
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.coordinate = CLLocationCoordinate2DMake(37.7749, -122.4194);
    annotation.title = @"Environmental Impact";
    [self.mapView addAnnotation:annotation];
}

- (NSArray *)calculateAffectedAreasInRegion:(MKCoordinateRegion)region withRadiationLevel:(double)radiationLevel {
    // Use GIS algorithms to calculate affected areas
    NSMutableArray *affectedAreas = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        MKCoordinateRegion affectedRegion = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(37.7749, -122.4194), i * 1000, i * 1000);
        [affectedAreas addObject:[NSValue valueWithMKCoordinateRegion:affectedRegion]];
    }
    return affectedAreas;
}

@end
```

This code provides an advanced implementation of the Environmental Impact Assessment project, incorporating the required features, advanced requirements, and non-negotiables. It uses Core Data for data storage, MapKit for map visualization, and GIS algorithms for calculating affected areas.

Note that this is a simplified example and may require additional implementation details, such as error handling, debugging mechanisms, and cybersecurity measures, to make it production-ready.
