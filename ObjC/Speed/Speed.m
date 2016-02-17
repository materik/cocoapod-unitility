//
//  Speed.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "Speed.h"

@implementation Speed

+ (KilometerPerHour *)kilometerPerHour:(float)kmph {
    return [KilometerPerHour value:kmph];
}

+ (Knot *)knot:(float)kn {
    return [Knot value:kn];
}

+ (MeterPerSecond *)meterPerSecond:(float)mps {
    return [MeterPerSecond value:mps];
}

+ (MilePerHour *)milePerHour:(float)mph {
    return [MilePerHour value:mph];
}

@end
