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

@implementation Pound

- (NSString *)unit {
    return @"lb";
}

- (Gram *)convertToGram {
    return [Gram value:self.value * 453.592f];
}

- (Kilogram *)convertToKilogram {
    return [Kilogram value:self.value * 0.453592f];
}

- (Pound *)convertToPound {
    return [Pound value:self.value];
}

@end
