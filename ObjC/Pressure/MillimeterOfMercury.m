//
//  MillimeterMercury.m
//  Pods
//
//  Created by materik on 23/02/16.
//
//

#import "MillimeterOfMercury.h"

#import "Bar.h"
#import "Hectopascal.h"
#import "Millibar.h"
#import "Pascal.h"

@implementation MillimeterOfMercury

+ (NSString *)unit {
    return @"mmHg";
}

+ (NSString *)unitLong {
    return @"Millimeter of Mercury";
}

- (Bar *)convertToBar {
    return [Bar value:self.value * 0.00133322f];
}

- (Hectopascal *)convertToHectopascal {
    return [Hectopascal value:self.value * 1.33322f];
}

- (Millibar *)convertToMillibar {
    return [Millibar value:self.value * 1.33322f];
}

- (MillimeterOfMercury *)convertToMillimeterOfMercury {
    return [MillimeterOfMercury value:self.value];
}

- (Pascal *)convertToPascal {
    return [Pascal value:self.value * 133.322f];
}

@end
