//
//  Centimeter.m
//  Pods
//
//  Created by materik on 15/02/16.
//
//

#import "Centimeter.h"

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

- (Centimeter *)convertToCentimeter {
    return [Centimeter value:self.value];
}

- (Foot *)convertToFoot {
    return [Foot value:self.value * 0.032808399f];
}

- (Inch *)convertToInch {
    return [Inch value:self.value * 0.3937007874f];
}

- (Meter *)convertToMeter {
    return [Meter value:self.value * 0.01f];
}

@end
