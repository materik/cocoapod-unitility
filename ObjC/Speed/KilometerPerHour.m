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

+ (NSString *)unitLong {
    return @"kilometers/hour";
}

- (KilometerPerHour *)convertToKilometerPerHour {
    return [KilometerPerHour value:self.value];
}

- (Knot *)convertToKnot {
    return [Knot value:self.value * 0.539956803f];
}

- (MeterPerSecond *)convertToMeterPerSecond {
    return [MeterPerSecond value:self.value * 0.277777778f];
}

- (MilePerHour *)convertToMilePerHour {
    return [MilePerHour value:self.value * 0.621371192f];
}

@end
