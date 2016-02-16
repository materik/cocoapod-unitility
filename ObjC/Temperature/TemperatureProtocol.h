//
//  TemperatureProtocol.h
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import <Foundation/Foundation.h>

@class Celcius, Farenheit, Kelvin;

@protocol TemperatureProtocol <NSObject>

- (Celcius *)convertToCelcius;
- (Farenheit *)convertToFarenheit;
- (Kelvin *)convertToKelvin;

@end
