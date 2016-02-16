//
//  Gram.m
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import "Gram.h"

#import "Kilogram.h"
#import "Pound.h"

@implementation Gram

- (NSString *)unit {
    return @"g";
}

- (Gram *)convertToGram {
    return [Gram value:self.value];
}

- (Kilogram *)convertToKilogram {
    return [Kilogram value:self.value * 0.001f];
}

- (Pound *)convertToPound {
    return [Pound value:self.value * 0.0022046244f];
}

@end
