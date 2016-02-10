//
//  Unit.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Unit.h"

@implementation Unit

- (NSString *)description {
    return [self formatted];
}

- (NSString *)unitFormatted {
    return @"";
}

- (NSString *)formatted {
    return [self formattedWithPrecision:2];
}

- (NSString *)formattedWithPrecision:(NSUInteger)precision {
    NSString *format = [NSString stringWithFormat:@"%%.%ldf", (long)precision];
    NSString *value = [NSString stringWithFormat:format, self.value];
    return [NSString stringWithFormat:@"%@ %@", value, self.unitFormatted];
}

@end
