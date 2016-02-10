//
//  Length.h
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Unit.h"

typedef NS_ENUM(NSUInteger, LengthUnit) {
    LengthUnitMeter = 0,
    LengthUnitCentimeter,
    LengthUnitFoot,
    LengthUnitInch,
};

@interface Length : Unit

@property(nonatomic, readonly) LengthUnit unit;

- (instancetype)init NS_UNAVAILABLE;

- (void)convertToCentimeter;
- (void)convertToFoot;
- (void)convertToInch;
- (void)convertToMeter;

+ (Length *)centimeter:(CGFloat)cm;
+ (Length *)foot:(CGFloat)ft;
+ (Length *)inch:(CGFloat)in;
+ (Length *)meter:(CGFloat)m;

@end
