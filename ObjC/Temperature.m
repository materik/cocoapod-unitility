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
static NSString *const kUnitCelcius = @"°C";
static NSString *const kUnitFarenheit = @"°F";
static NSString *const kUnitKelvin = @"K";

@implementation Temperature

- (instancetype)initWithValue:(CGFloat)value unit:(TemperatureUnit)unit {
    self = [super init];
    if (self) {
        [self setValue:value];
        _unit = unit;
    }
    return self;
}

- (NSString *)unitFormatted {
    switch (self.unit) {
        case TemperatureUnitCelcius:
            return kUnitCelcius;
        case TemperatureUnitFarenheit:
            return kUnitFarenheit;
        case TemperatureUnitKelvin:
            return kUnitKelvin;
    }
}

- (NSString *)formatted {
    return [[self formattedWithPrecision:1] stringByReplacingOccurrencesOfString:@" " withString:@""];
}

#pragma mark - Convert

- (void)convertToCelcius {
    switch (self.unit) {
        case TemperatureUnitCelcius:
            break;
        case TemperatureUnitFarenheit:
            [self setValue:(self.value - kConstantFarenheit) / kFactorFarenheit];
            break;
        case TemperatureUnitKelvin:
            [self setValue:self.value + kConstantKelvin];
            break;
    }
    _unit = TemperatureUnitCelcius;
}

- (void)convertToFarenheit {
    switch (self.unit) {
        case TemperatureUnitCelcius:
            [self setValue:self.value * kFactorFarenheit + kConstantFarenheit];
            break;
        case TemperatureUnitFarenheit:
            break;
        case TemperatureUnitKelvin:
            [self convertToCelcius];
            [self convertToFarenheit];
            break;
    }
    _unit = TemperatureUnitFarenheit;
}

- (void)convertToKelvin {
    switch (self.unit) {
        case TemperatureUnitCelcius:
            [self setValue:self.value - kConstantKelvin];
            break;
        case TemperatureUnitFarenheit:
            [self convertToCelcius];
            [self convertToKelvin];
            break;
        case TemperatureUnitKelvin:
            break;
    }
    _unit = TemperatureUnitKelvin;
}

#pragma mark - Static

+ (Temperature *)celcius:(CGFloat)c {
    return [[Temperature alloc] initWithValue:c unit:TemperatureUnitCelcius];
}

+ (Temperature *)farenheit:(CGFloat)f {
    return [[Temperature alloc] initWithValue:f unit:TemperatureUnitFarenheit];
}

+ (Temperature *)kelvin:(CGFloat)k {
    return [[Temperature alloc] initWithValue:k unit:TemperatureUnitKelvin];
}

@end
