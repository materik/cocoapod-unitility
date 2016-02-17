//
//  Weight.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Weight.h"

@implementation Weight

+ (Gram *)gram:(float)g {
    return [Gram value:g];
}

+ (Kilogram *)kilogram:(float)kg {
    return [Kilogram value:kg];
}

+ (Ounce *)ounce:(float)oz {
    return [Ounce value:oz];
}

+ (Pound *)pound:(float)lb {
    return [Pound value:lb];
}

@end
