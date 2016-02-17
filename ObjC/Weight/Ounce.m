//
//  Ounce.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "Ounce.h"

#import "Gram.h"
#import "Kilogram.h"
#import "Pound.h"

@implementation Ounce

- (NSString *)unit {
    return @"oz";
}

- (Gram *)convertToGram {
    return [Gram value:self.value * 28.3495f];
}

- (Kilogram *)convertToKilogram {
    return [Kilogram value:self.value * 0.0283495f];
}

- (Ounce *)convertToOunce {
    return [Ounce value:self.value];
}

- (Pound *)convertToPound {
    return [Pound value:self.value * 0.0625f];
}

@end
