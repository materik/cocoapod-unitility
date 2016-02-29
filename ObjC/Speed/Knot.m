//
//  Knot.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "Knot.h"

#import "KilometerPerHour.h"
#import "MeterPerSecond.h"
#import "MilePerHour.h"

@implementation Knot

+ (NSString *)unit {
    return @"kn";
}

+ (NSString *)unitLong {
    return @"knots";
}

- (KilometerPerHour *)convertToKilometerPerHour {
    return [KilometerPerHour value:self.value * 1.852f];
}

- (Knot *)convertToKnot {
    return [Knot value:self.value];
}

- (MeterPerSecond *)convertToMeterPerSecond {
    return [MeterPerSecond value:self.value * 0.514444444f];
}

- (MilePerHour *)convertToMilePerHour {
    return [MilePerHour value:self.value * 1.150779448f];
}

@end
