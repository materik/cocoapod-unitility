//
//  Speed.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "Speed.h"

@implementation Speed

+ (KilometerPerHour *)kilometerPerHour:(CGFloat)kmph {
    return [KilometerPerHour value:kmph];
}

+ (Knot *)knot:(CGFloat)kn {
    return [Knot value:kn];
}

+ (MeterPerSecond *)meterPerSecond:(CGFloat)mps {
    return [MeterPerSecond value:mps];
}

+ (MilePerHour *)milePerHour:(CGFloat)mph {
    return [MilePerHour value:mph];
}

@end
