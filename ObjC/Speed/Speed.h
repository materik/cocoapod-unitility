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

@protocol Speed <NSObject>

- (KilometerPerHour *)convertToKilometersPerHour;
- (Knot *)convertToKnots;
- (MeterPerSecond *)convertToMetersPerSecond;
- (MilePerHour *)convertToMilesPerHour;

@end
