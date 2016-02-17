//
//  Meter.m
//  Pods
//
//  Created by materik on 15/02/16.
//
//

#import "Length.h"
#import "Meter.h"

#import "Centimeter.h"
#import "Foot.h"
#import "Inch.h"

@implementation Meter

+ (NSString *)unit {
    return @"m";
}

+ (NSString *)unitLong {
    return @"meters";
}

- (Centimeter *)convertToCentimeters {
    return [Centimeter value:self.value * 100.0f];
}

- (Foot *)convertToFeet {
    return [Foot value:self.value * 3.280839895f];
}

- (Inch *)convertToInches {
    return [Inch value:self.value * 39.37007874f];
}

- (Meter *)convertToMeters {
    return [Meter value:self.value];
}

@end
