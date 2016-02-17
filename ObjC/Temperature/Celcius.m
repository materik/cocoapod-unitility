//
//  Celcius.m
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import "Celcius.h"

#import "Farenheit.h"
#import "Kelvin.h"

@implementation Celcius

+ (NSString *)unit {
    return @"°C";
}

- (Celcius *)convertToCelcius {
    return [Celcius value:self.value];
}

- (Farenheit *)convertToFarenheit {
    return [Farenheit value:self.value * 9.0f / 5.0f + 32.0f];
}

- (Kelvin *)convertToKelvin {
    return [Kelvin value:self.value + 273.15f];
}

@end
