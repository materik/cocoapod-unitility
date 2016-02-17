//
//  Inch.m
//  Pods
//
//  Created by materik on 15/02/16.
//
//

#import "Inch.h"
#import "Length.h"

#import "Centimeter.h"
#import "Foot.h"
#import "Meter.h"

@implementation Inch

+ (NSString *)unit {
    return @"in";
}

+ (NSString *)unitLong {
    return @"inces";
}

- (Centimeter *)convertToCentimeters {
    return [Centimeter value:self.value * 2.54f];
}

- (Foot *)convertToFeet {
    return [Foot value:self.value * 0.0833333333f];
}

- (Inch *)convertToInches {
    return [Inch value:self.value];
}

- (Meter *)convertToMeters {
    return [Meter value:self.value * 0.0254f];
}

@end
