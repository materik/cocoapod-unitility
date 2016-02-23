//
//  Bar.m
//  Pods
//
//  Created by materik on 23/02/16.
//
//

#import "Bar.h"

#import "Hectopascal.h"
#import "Millibar.h"
#import "MillimeterMercury.h"
#import "Pascal.h"

@implementation Bar

+ (NSString *)unit {
    return @"bar";
}

+ (NSString *)unitLong {
    return @"Bar";
}

- (Bar *)convertToBars {
    return [Bar value:self.value];
}

- (Hectopascal *)convertToHectopascal {
    return [Hectopascal value:self.value * 1000.0f];
}

- (Millibar *)convertToMillibars {
    return [Millibar value:self.value * 1000.0f];
}

- (MillimeterMercury *)convertToMillimeterMercury {
    return [MillimeterMercury value:self.value * 750.063755419f];
}

- (Pascal *)convertToPascal {
    return [Pascal value:self.value * 100000.0f];
}

@end
