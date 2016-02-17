//
//  MeterPerSecond.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "MeterPerSecond.h"

#import "KilometerPerHour.h"
#import "Knot.h"
#import "MilePerHour.h"

@implementation MeterPerSecond

+ (NSString *)unit {
    return @"m/s";
}

- (KilometerPerHour *)convertToKilometersPerHour {
    return [KilometerPerHour value:self.value * 3.6f];
}

- (Knot *)convertToKnots {
    return [Knot value:self.value * 1.943844492f];
}

- (MeterPerSecond *)convertToMetersPerSecond {
    return [MeterPerSecond value:self.value];
}

- (MilePerHour *)convertToMilesPerHour {
    return [MilePerHour value:self.value * 2.236936292f];
}

@end
