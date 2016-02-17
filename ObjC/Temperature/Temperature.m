//
//  Temperature.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Temperature.h"

@implementation Temperature

+ (Celcius *)celcius:(float)c {
    return [Celcius value:c];
}

+ (Farenheit *)farenheit:(float)f {
    return [Farenheit value:f];
}

+ (Kelvin *)kelvin:(float)k {
    return [Kelvin value:k];
}

@end
