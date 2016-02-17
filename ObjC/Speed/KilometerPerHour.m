//
//  KilometerPerHour.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "KilometerPerHour.h"

#import "Knot.h"
#import "MeterPerSecond.h"
#import "MilePerHour.h"

@implementation KilometerPerHour

+ (NSString *)unit {
    return @"km/h";
}

- (KilometerPerHour *)convertToKilometersPerHour {
    return [KilometerPerHour value:self.value];
}

- (Knot *)convertToKnots {
    return [Knot value:self.value * 0.539956803f];
}

- (MeterPerSecond *)convertToMetersPerSecond {
    return [MeterPerSecond value:self.value * 0.277777778f];
}

- (MilePerHour *)convertToMilesPerHour {
    return [MilePerHour value:self.value * 0.621371192f];
}

@end
