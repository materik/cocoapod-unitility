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
#import "MillimeterOfMercury.h"

@implementation Pascal

+ (NSString *)unit {
    return @"Pa";
}

+ (NSString *)unitLong {
    return @"Pascal";
}

- (Bar *)convertToBar {
    return [Bar value:self.value * 0.00001f];
}

- (Hectopascal *)convertToHectopascal {
    return [Hectopascal value:self.value * 0.01f];
}

- (Millibar *)convertToMillibar {
    return [Millibar value:self.value * 0.01f];
}

- (MillimeterOfMercury *)convertToMillimeterOfMercury {
    return [MillimeterOfMercury value:self.value * 0.007500638f];
}

- (Pascal *)convertToPascal {
    return [Pascal value:self.value];
}

@end
