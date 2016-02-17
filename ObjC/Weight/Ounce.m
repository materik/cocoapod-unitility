//
//  Ounce.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "Ounce.h"
#import "Weight.h"

#import "Gram.h"
#import "Kilogram.h"
#import "Pound.h"

@implementation Ounce

+ (NSString *)unit {
    return @"oz";
}

+ (NSString *)unitLong {
    return @"ounces";
}

- (Gram *)convertToGrams {
    return [Gram value:self.value * 28.3495f];
}

- (Kilogram *)convertToKilograms {
    return [Kilogram value:self.value * 0.0283495f];
}

- (Ounce *)convertToOunces {
    return [Ounce value:self.value];
}

- (Pound *)convertToPounds {
    return [Pound value:self.value * 0.0625f];
}

@end
