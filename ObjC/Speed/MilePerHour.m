//
//  MilePerHour.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "MilePerHour.h"
#import "Speed.h"

#import "KilometerPerHour.h"
#import "Knot.h"
#import "MeterPerSecond.h"

@implementation MilePerHour

+ (NSString *)unit {
    return @"mi/h";
}

+ (NSString *)unitLong {
    return @"miles/hour";
}

- (KilometerPerHour *)convertToKilometersPerHour {
    return [KilometerPerHour value:self.value * 1.609344f];
}

- (Knot *)convertToKnots {
    return [Knot value:self.value * 0.868976242f];
}

- (MeterPerSecond *)convertToMetersPerSecond {
    return [MeterPerSecond value:self.value * 0.44704f];
}

- (MilePerHour *)convertToMilesPerHour {
    return [MilePerHour value:self.value];
}

@end
