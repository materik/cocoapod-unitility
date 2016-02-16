//
//  Farenheit.m
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import "Farenheit.h"

#import "Celcius.h"
#import "Kelvin.h"

@implementation Farenheit

- (NSString *)unit {
    return @"°F";
}

- (Celcius *)convertToCelcius {
    return [Celcius value:(self.value - 32.0f) * 5.0f / 9.0f];
}

- (Farenheit *)convertToFarenheit {
    return [Farenheit value:self.value];
}

- (Kelvin *)convertToKelvin {
    return [Kelvin value:(self.value + 459.67f) * 5.0f / 9.0f];
}

@end
