//
//  Temperature.h
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Unit.h"

typedef NS_ENUM(NSUInteger, TemperatureUnit) {
    TemperatureUnitKelvin = 0,
    TemperatureUnitCelcius,
    TemperatureUnitFarenheit,
};

@interface Temperature : Unit

@property(nonatomic, readonly) TemperatureUnit unit;

- (instancetype)init NS_UNAVAILABLE;

- (void)convertToCelcius;
- (void)convertToFarenheit;
- (void)convertToKelvin;

+ (Temperature *)celcius:(CGFloat)c;
+ (Temperature *)farenheit:(CGFloat)f;
+ (Temperature *)kelvin:(CGFloat)k;

@end
