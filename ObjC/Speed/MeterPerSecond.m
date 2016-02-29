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

+ (NSString *)unitLong {
    return @"meters/second";
}

- (KilometerPerHour *)convertToKilometerPerHour {
    return [KilometerPerHour value:self.value * 3.6f];
}

- (Knot *)convertToKnot {
    return [Knot value:self.value * 1.943844492f];
}

- (MeterPerSecond *)convertToMeterPerSecond {
    return [MeterPerSecond value:self.value];
}

- (MilePerHour *)convertToMilePerHour {
    return [MilePerHour value:self.value * 2.236936292f];
}

@end
