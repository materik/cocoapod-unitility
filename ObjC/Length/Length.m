//
//  Length.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Length.h"

#import "Centimeter.h"
#import "Foot.h"
#import "Inch.h"
#import "Meter.h"

@implementation Length

+ (Centimeter *)centimeter:(CGFloat)cm {
    return [Centimeter value:cm];
}

+ (Foot *)foot:(CGFloat)ft {
    return [Foot value:ft];
}

+ (Inch *)inch:(CGFloat)in {
    return [Inch value:in];
}

+ (Meter *)meter:(CGFloat)m {
    return [Meter value:m];
}

@end
