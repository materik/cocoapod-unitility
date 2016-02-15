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

- (NSString *)unit {
    return @"ft";
}

- (Centimeter *)convertToCentimeter {
    return [Centimeter value:self.value * 30.48f];
}

- (Foot *)convertToFoot {
    return [Foot value:self.value];
}

- (Inch *)convertToInch {
    return [Inch value:self.value * 12.0f];
}

- (Meter *)convertToMeter {
    return [Meter value:self.value * 0.3048f];
}

@end
