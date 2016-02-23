//
//  Pascal.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "Pascal.h"

#import "Bar.h"
#import "Hectopascal.h"
#import "Millibar.h"
#import "MillimeterMercury.h"

@implementation Pascal

+ (NSString *)unit {
    return @"Pa";
}

+ (NSString *)unitLong {
    return @"Pascal";
}

- (Bar *)convertToBars {
    return [Bar value:self.value * 0.00001f];
}

- (Hectopascal *)convertToHectopascal {
    return [Hectopascal value:self.value * 0.01f];
}

- (Millibar *)convertToMillibars {
    return [Millibar value:self.value * 0.01f];
}

- (MillimeterMercury *)convertToMillimeterMercury {
    return [MillimeterMercury value:self.value * 0.007500638f];
}

- (Pascal *)convertToPascal {
    return [Pascal value:self.value];
}

@end
