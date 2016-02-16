//
//  Temperature.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Temperature.h"

static CGFloat const kConstantFarenheit = 32.0;
static CGFloat const kConstantKelvin = 273.15;
static CGFloat const kFactorFarenheit = 1.8;

@implementation Temperature

+ (Celcius *)celcius:(CGFloat)c {
    return [Celcius value:c];
}

+ (Farenheit *)farenheit:(CGFloat)f {
    return [Farenheit value:f];
}

+ (Kelvin *)kelvin:(CGFloat)k {
    return [Kelvin value:k];
}

@end
