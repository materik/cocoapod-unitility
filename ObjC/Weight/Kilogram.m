//
//  Kilogram.m
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import "Kilogram.h"
#import "Weight.h"

#import "Gram.h"
#import "Ounce.h"
#import "Pound.h"

@implementation Kilogram

+ (NSString *)unit {
    return @"kg";
}

+ (NSString *)unitLong {
    return @"kilograms";
}

- (Gram *)convertToGrams {
    return [Gram value:self.value * 1000.0f];
}

- (Kilogram *)convertToKilograms {
    return [Kilogram value:self.value];
}

- (Ounce *)convertToOunces {
    return [Ounce value:self.value * 35.273990723f];
}

- (Pound *)convertToPounds {
    return [Pound value:self.value * 2.2046244202f];
}

@end
