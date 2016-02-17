//
//  Millibar.m
//
//
//  Created by materik on 17/02/16.
//
//

#import "Millibar.h"
#import "Pressure.h"

#import "Pascal.h"

@implementation Millibar

+ (NSString *)unit {
    return @"mbar";
}

+ (NSString *)unitLong {
    return @"millibar";
}

- (Millibar *)convertToMillibars {
    return [Millibar value:self.value];
}

- (Pascal *)convertToPascals {
    return [Pascal value:self.value * 100.0f];
}

@end
