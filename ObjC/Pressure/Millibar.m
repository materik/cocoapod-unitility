//
//  Millibar.m
//
//
//  Created by materik on 17/02/16.
//
//

#import "Millibar.h"

#import "Bar.h"
#import "Hectopascal.h"
#import "MillimeterOfMercury.h"
#import "Pascal.h"

@implementation Millibar

+ (NSString *)unit {
    return @"mbar";
}

+ (NSString *)unitLong {
    return @"millibar";
}

- (Bar *)convertToBar {
    return [Bar value:self.value * 0.001];
}

- (Hectopascal *)convertToHectopascal {
    return [Hectopascal value:self.value * 1.0f];
}

- (Millibar *)convertToMillibar {
    return [Millibar value:self.value];
}

- (MillimeterOfMercury *)convertToMillimeterOfMercury {
    return [MillimeterOfMercury value:self.value * 0.750063755f];
}

- (Pascal *)convertToPascal {
    return [Pascal value:self.value * 100.0f];
}

@end
