//
//  Kelvin.m
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import "Kelvin.h"

#import "Celcius.h"
#import "Farenheit.h"

@implementation Kelvin

+ (NSString *)unit {
    return @"K";
}

+ (NSString *)unitLong {
    return @"Kelvin";
}

- (Celcius *)convertToCelcius {
    return [Celcius value:self.value - 273.15f];
}

- (Farenheit *)convertToFarenheit {
    return [Farenheit value:self.value * 9.0f / 5.0f - 459.67f];
}

- (Kelvin *)convertToKelvin {
    return [Kelvin value:self.value];
}

@end
