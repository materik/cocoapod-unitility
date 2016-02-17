//
//  Temperature.h
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import <Foundation/Foundation.h>

#import "Celcius.h"
#import "Farenheit.h"
#import "Kelvin.h"

@protocol Temperature <NSObject>

- (Celcius *)convertToCelcius;
- (Farenheit *)convertToFarenheit;
- (Kelvin *)convertToKelvin;

@end
