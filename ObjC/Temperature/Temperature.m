//
//  Temperature.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Temperature.h"

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
