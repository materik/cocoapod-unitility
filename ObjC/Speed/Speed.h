//
//  Speed.h
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import <Foundation/Foundation.h>

#import "KilometerPerHour.h"
#import "Knot.h"
#import "MeterPerSecond.h"
#import "MilePerHour.h"

@interface Speed : NSObject

+ (KilometerPerHour *)kilometerPerHour:(float)kmph;
+ (Knot *)knot:(float)kn;
+ (MeterPerSecond *)meterPerSecond:(float)mps;
+ (MilePerHour *)milePerHour:(float)mph;

@end
