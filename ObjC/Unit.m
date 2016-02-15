//
//  Unit.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Unit.h"

@implementation Unit

- (instancetype)initWithValue:(CGFloat)value {
    self = [super init];
    if (self) {
        [self setValue:value];
    }
    return self;
}

- (NSString *)description {
    return [self formatted];
}

- (NSString *)unit {
    return @"";
}

- (NSString *)formatted {
    return [self formattedWithPrecision:2];
}

- (NSString *)formattedWithPrecision:(NSUInteger)precision {
    NSString *format = [NSString stringWithFormat:@"%%.%ldf", (long)precision];
    NSString *value = [NSString stringWithFormat:format, self.value];
    return [NSString stringWithFormat:@"%@ %@", value, self.unit];
}

+ (instancetype)value:(CGFloat)value {
    return [[[self class] alloc] initWithValue:value];
}

@end
