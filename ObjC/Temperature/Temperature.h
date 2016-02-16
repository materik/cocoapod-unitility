//
//  Temperature.h
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import <Foundation/Foundation.h>

#import "Celcius.h"
#import "Farenheit.h"
#import "Kelvin.h"

@interface Temperature : NSObject

+ (Celcius *)celcius:(CGFloat)c;
+ (Farenheit *)farenheit:(CGFloat)f;
+ (Kelvin *)kelvin:(CGFloat)k;

@end
