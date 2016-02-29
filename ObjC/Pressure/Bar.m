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
#import "MillimeterOfMercury.h"
#import "Pascal.h"

@implementation Bar

+ (NSString *)unit {
    return @"bar";
}

+ (NSString *)unitLong {
    return @"Bar";
}

- (Bar *)convertToBar {
    return [Bar value:self.value];
}

- (Hectopascal *)convertToHectopascal {
    return [Hectopascal value:self.value * 1000.0f];
}

- (Millibar *)convertToMillibar {
    return [Millibar value:self.value * 1000.0f];
}

- (MillimeterOfMercury *)convertToMillimeterOfMercury {
    return [MillimeterOfMercury value:self.value * 750.063755419f];
}

- (Pascal *)convertToPascal {
    return [Pascal value:self.value * 100000.0f];
}

@end
