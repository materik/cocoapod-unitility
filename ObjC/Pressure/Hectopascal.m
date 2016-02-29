//
//  Hectopascal.m
//  Pods
//
//  Created by materik on 23/02/16.
//
//

#import "Hectopascal.h"

#import "Bar.h"
#import "Millibar.h"
#import "MillimeterOfMercury.h"
#import "Pascal.h"

@implementation Hectopascal

+ (NSString *)unit {
    return @"hPa";
}

+ (NSString *)unitLong {
    return @"hectopascal";
}

- (Bar *)convertToBar {
    return [Bar value:self.value * 0.001f];
}

- (Hectopascal *)convertToHectopascal {
    return [Hectopascal value:self.value];
}

- (Millibar *)convertToMillibar {
    return [Millibar value:self.value * 1.0f];
}

- (MillimeterOfMercury *)convertToMillimeterOfMercury {
    return [MillimeterOfMercury value:self.value * 0.750063755f];
}

- (Pascal *)convertToPascal {
    return [Pascal value:self.value * 100.0f];
}

@end
