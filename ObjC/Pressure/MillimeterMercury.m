//
//  MillimeterMercury.m
//  Pods
//
//  Created by materik on 23/02/16.
//
//

#import "MillimeterMercury.h"

#import "Bar.h"
#import "Hectopascal.h"
#import "Millibar.h"
#import "Pascal.h"

@implementation MillimeterMercury

+ (NSString *)unit {
    return @"mmHg";
}

+ (NSString *)unitLong {
    return @"Millimeter of Mercury";
}

- (Bar *)convertToBars {
    return [Bar value:self.value * 0.00133322f];
}

- (Hectopascal *)convertToHectopascal {
    return [Hectopascal value:self.value * 1.33322f];
}

- (Millibar *)convertToMillibars {
    return [Millibar value:self.value * 1.33322f];
}

- (MillimeterMercury *)convertToMillimeterMercury {
    return [MillimeterMercury value:self.value];
}

- (Pascal *)convertToPascal {
    return [Pascal value:self.value * 133.322f];
}

@end
