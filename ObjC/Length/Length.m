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

+ (Centimeter *)centimeter:(float)cm {
    return [Centimeter value:cm];
}

+ (Foot *)foot:(float)ft {
    return [Foot value:ft];
}

+ (Inch *)inch:(float)in {
    return [Inch value:in];
}

+ (Meter *)meter:(float)m {
    return [Meter value:m];
}

@end
