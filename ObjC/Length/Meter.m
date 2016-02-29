//
//  Meter.m
//  Pods
//
//  Created by materik on 15/02/16.
//
//

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

- (Centimeter *)convertToCentimeter {
    return [Centimeter value:self.value * 100.0f];
}

- (Foot *)convertToFoot {
    return [Foot value:self.value * 3.280839895f];
}

- (Inch *)convertToInch {
    return [Inch value:self.value * 39.37007874f];
}

- (Meter *)convertToMeter {
    return [Meter value:self.value];
}

@end
