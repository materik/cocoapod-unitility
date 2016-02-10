//
//  Weight.h
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Unit.h"

typedef NS_ENUM(NSUInteger, WeightUnit) {
    WeightUnitKilogram = 0,
    WeightUnitGram,
    WeightUnitPounds,
};

@interface Weight : Unit

@property(nonatomic, readonly) WeightUnit unit;

- (instancetype)init NS_UNAVAILABLE;

- (void)convertToGram;
- (void)convertToKilogram;
- (void)convertToPounds;

+ (Weight *)gram:(CGFloat)g;
+ (Weight *)kilogram:(CGFloat)kg;
+ (Weight *)pounds:(CGFloat)lb;

@end
