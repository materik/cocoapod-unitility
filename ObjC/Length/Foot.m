//
//  Foot.m
//  Pods
//
//  Created by materik on 15/02/16.
//
//

#import "Foot.h"

#import "Centimeter.h"
#import "Inch.h"
#import "Meter.h"

@implementation Foot

+ (NSString *)unit {
    return @"ft";
}

+ (NSString *)unitLong {
    return @"feet";
}

- (Centimeter *)convertToCentimeters {
    return [Centimeter value:self.value * 30.48f];
}

- (Foot *)convertToFeet {
    return [Foot value:self.value];
}

- (Inch *)convertToInches {
    return [Inch value:self.value * 12.0f];
}

- (Meter *)convertToMeters {
    return [Meter value:self.value * 0.3048f];
}

@end
