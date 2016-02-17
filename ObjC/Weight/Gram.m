//
//  Gram.m
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import "Gram.h"

#import "Kilogram.h"
#import "Ounce.h"
#import "Pound.h"

@implementation Gram

+ (NSString *)unit {
    return @"g";
}

+ (NSString *)unitLong {
    return @"grams";
}

- (Gram *)convertToGrams {
    return [Gram value:self.value];
}

- (Kilogram *)convertToKilograms {
    return [Kilogram value:self.value * 0.001f];
}

- (Ounce *)convertToOunces {
    return [Ounce value:self.value * 0.0352739907f];
}

- (Pound *)convertToPounds {
    return [Pound value:self.value * 0.0022046244f];
}

@end
