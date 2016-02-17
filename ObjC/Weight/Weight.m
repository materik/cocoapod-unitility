//
//  Weight.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Weight.h"

@implementation Weight

+ (Gram *)gram:(CGFloat)g {
    return [Gram value:g];
}

+ (Kilogram *)kilogram:(CGFloat)kg {
    return [Kilogram value:kg];
}

+ (Ounce *)ounce:(CGFloat)oz {
    return [Ounce value:oz];
}

+ (Pound *)pound:(CGFloat)lb {
    return [Pound value:lb];
}

@end
