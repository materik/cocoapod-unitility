//
//  Centimeter.m
//  Pods
//
//  Created by materik on 15/02/16.
//
//

#import "Centimeter.h"
#import "Length.h"

#import "Foot.h"
#import "Inch.h"
#import "Meter.h"

@implementation Centimeter

+ (NSString *)unit {
    return @"cm";
}

+ (NSString *)unitLong {
    return @"centimeters";
}

- (Centimeter *)convertToCentimeters {
    return [Centimeter value:self.value];
}

- (Foot *)convertToFeet {
    return [Foot value:self.value * 0.032808399f];
}

- (Inch *)convertToInches {
    return [Inch value:self.value * 0.3937007874f];
}

- (Meter *)convertToMeters {
    return [Meter value:self.value * 0.01f];
}

@end
