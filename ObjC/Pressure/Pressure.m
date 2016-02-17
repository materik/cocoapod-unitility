//
//  Pressure.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "Pressure.h"

@implementation Pressure

+ (Millibar *)millibar:(CGFloat)mbar {
    return [Millibar value:mbar];
}

+ (Pascal *)pascal:(CGFloat)pa {
    return [Pascal value:pa];
}

@end
