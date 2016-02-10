//
//  Weight.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Weight.h"

static CGFloat const kFactorGramToKilogram = 0.001f;
static CGFloat const kFactorGramToPounds = 0.0022046244f;
static CGFloat const kFactorKilogramToGram = 1000.0f;
static CGFloat const kFactorKilogramToPounds = 2.2046244202f;
static CGFloat const kFactorPoundsToGram = 453.592f;
static CGFloat const kFactorPoundsToKilogram = 0.453592f;
static NSString *const kUnitGram = @"g";
static NSString *const kUnitKilogram = @"kg";
static NSString *const kUnitPounds = @"lb";

@implementation Weight

- (instancetype)initWithValue:(CGFloat)value unit:(WeightUnit)unit {
    self = [super init];
    if (self) {
        [self setValue:value];
        _unit = unit;
    }
    return self;
}

- (NSString *)unitFormatted {
    switch (self.unit) {
        case WeightUnitGram:
            return kUnitGram;
        case WeightUnitKilogram:
            return kUnitKilogram;
        case WeightUnitPounds:
            return kUnitPounds;
    }
}

#pragma mark - Convert

- (void)convertToGram {
    switch (self.unit) {
        case WeightUnitGram:
            break;
        case WeightUnitKilogram:
            [self setValue:self.value * kFactorKilogramToGram];
            break;
        case WeightUnitPounds:
            [self setValue:self.value * kFactorPoundsToGram];
            break;
    }
    _unit = WeightUnitGram;
}

- (void)convertToKilogram {
    switch (self.unit) {
        case WeightUnitGram:
            [self setValue:self.value * kFactorGramToKilogram];
            break;
        case WeightUnitKilogram:
            break;
        case WeightUnitPounds:
            [self setValue:self.value * kFactorPoundsToKilogram];
            break;
    }
    _unit = WeightUnitKilogram;
}

- (void)convertToPounds {
    switch (self.unit) {
        case WeightUnitGram:
            [self setValue:self.value * kFactorGramToPounds];
            break;
        case WeightUnitKilogram:
            [self setValue:self.value * kFactorKilogramToPounds];
            break;
        case WeightUnitPounds:
            break;
    }
    _unit = WeightUnitPounds;
}

#pragma mark - Static

+ (Weight *)gram:(CGFloat)g {
    return [[Weight alloc] initWithValue:g unit:WeightUnitGram];
}

+ (Weight *)kilogram:(CGFloat)kg {
    return [[Weight alloc] initWithValue:kg unit:WeightUnitKilogram];
}

+ (Weight *)pounds:(CGFloat)lb {
    return [[Weight alloc] initWithValue:lb unit:WeightUnitPounds];
}

@end
