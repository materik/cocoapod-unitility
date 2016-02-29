//
//  MilePerHour.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "MilePerHour.h"

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

- (KilometerPerHour *)convertToKilometerPerHour {
    return [KilometerPerHour value:self.value * 1.609344f];
}

- (Knot *)convertToKnot {
    return [Knot value:self.value * 0.868976242f];
}

- (MeterPerSecond *)convertToMeterPerSecond {
    return [MeterPerSecond value:self.value * 0.44704f];
}

- (MilePerHour *)convertToMilePerHour {
    return [MilePerHour value:self.value];
}

@end
