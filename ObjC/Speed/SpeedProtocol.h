//
//  Speed.h
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import <Foundation/Foundation.h>

@class KilometerPerHour, Knot, MeterPerSecond, MilePerHour;

@protocol Speed <NSObject>

@required
- (KilometerPerHour *)convertToKilometersPerHour;
- (Knot *)convertToKnots;
- (MeterPerSecond *)convertToMetersPerSecond;
- (MilePerHour *)convertToMilesPerHour;

@end
