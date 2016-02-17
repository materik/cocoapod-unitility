//
//  Pound.m
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import "Pound.h"

#import "Gram.h"
#import "Kilogram.h"
#import "Ounce.h"

@implementation Pound

- (NSString *)unit {
    return @"lb";
}

- (Gram *)convertToGrams {
    return [Gram value:self.value * 453.592f];
}

- (Kilogram *)convertToKilograms {
    return [Kilogram value:self.value * 0.453592f];
}

- (Ounce *)convertToOunces {
    return [Ounce value:self.value * 16.0f];
}

- (Pound *)convertToPounds {
    return [Pound value:self.value];
}

@end
