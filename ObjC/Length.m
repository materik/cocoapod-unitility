//
//  Length.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Length.h"

static CGFloat const kFactorCentimeterToFoot = 0.032808399f;
static CGFloat const kFactorCentimeterToInch = 0.3937007874f;
static CGFloat const kFactorCentimeterToMeter = 0.01f;
static CGFloat const kFactorFootToCentimeter = 30.48f;
static CGFloat const kFactorFootToInch = 12.0f;
static CGFloat const kFactorFootToMeter = 0.3048f;
static CGFloat const kFactorInchToCentimeter = 2.54f;
static CGFloat const kFactorInchToFoot = 0.0833333333f;
static CGFloat const kFactorInchToMeter = 0.0254f;
static CGFloat const kFactorMeterToCentimeter = 100.0f;
static CGFloat const kFactorMeterToFoot = 3.280839895f;
static CGFloat const kFactorMeterToInch = 39.37007874f;
static NSString *const kUnitCentimeter = @"cm";
static NSString *const kUnitFoot = @"ft";
static NSString *const kUnitInch = @"in";
static NSString *const kUnitMeter = @"m";

@implementation Length

- (instancetype)initWithValue:(CGFloat)value unit:(LengthUnit)unit {
    self = [super init];
    if (self) {
        [self setValue:value];
        _unit = unit;
    }
    return self;
}

- (NSString *)unitFormatted {
    switch (self.unit) {
        case LengthUnitCentimeter:
            return kUnitCentimeter;
        case LengthUnitFoot:
            return kUnitFoot;
        case LengthUnitInch:
            return kUnitInch;
        case LengthUnitMeter:
            return kUnitMeter;
    }
}

#pragma mark - Convert

- (void)convertToCentimeter {
    switch (self.unit) {
        case LengthUnitCentimeter:
            break;
        case LengthUnitFoot:
            [self setValue:self.value * kFactorFootToCentimeter];
            break;
        case LengthUnitInch:
            [self setValue:self.value * kFactorInchToCentimeter];
            break;
        case LengthUnitMeter:
            [self setValue:self.value * kFactorMeterToCentimeter];
            break;
    }
    _unit = LengthUnitCentimeter;
}

- (void)convertToFoot {
    switch (self.unit) {
        case LengthUnitCentimeter:
            [self setValue:self.value * kFactorCentimeterToFoot];
            break;
        case LengthUnitFoot:
            break;
        case LengthUnitInch:
            [self setValue:self.value * kFactorInchToFoot];
            break;
        case LengthUnitMeter:
            [self setValue:self.value * kFactorMeterToFoot];
            break;
    }
    _unit = LengthUnitFoot;
}

- (void)convertToInch {
    switch (self.unit) {
        case LengthUnitCentimeter:
            [self setValue:self.value * kFactorCentimeterToInch];
            break;
        case LengthUnitFoot:
            [self setValue:self.value * kFactorFootToInch];
            break;
        case LengthUnitInch:
            break;
        case LengthUnitMeter:
            [self setValue:self.value * kFactorMeterToInch];
            break;
    }
    _unit = LengthUnitInch;
}

- (void)convertToMeter {
    switch (self.unit) {
        case LengthUnitCentimeter:
            [self setValue:self.value * kFactorCentimeterToMeter];
            break;
        case LengthUnitFoot:
            [self setValue:self.value * kFactorFootToMeter];
            break;
        case LengthUnitInch:
            [self setValue:self.value * kFactorInchToMeter];
            break;
        case LengthUnitMeter:
            break;
    }
    _unit = LengthUnitMeter;
}

#pragma mark - Static

+ (Length *)centimeter:(CGFloat)cm {
    return [[Length alloc] initWithValue:cm unit:LengthUnitCentimeter];
}

+ (Length *)foot:(CGFloat)ft {
    return [[Length alloc] initWithValue:ft unit:LengthUnitFoot];
}

+ (Length *)inch:(CGFloat)in {
    return [[Length alloc] initWithValue:in unit:LengthUnitInch];
}

+ (Length *)meter:(CGFloat)m {
    return [[Length alloc] initWithValue:m unit:LengthUnitMeter];
}

@end
