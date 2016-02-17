//
//  Unit.m
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import "Unit.h"

@implementation Unit

- (instancetype)initWithValue:(float)value {
    self = [super init];
    if (self) {
        [self setValue:value];
    }
    return self;
}

- (NSString *)description {
    return [self formatted];
}

- (NSString *)formatted {
    return [self formattedWithPrecision:2];
}

- (NSString *)formattedLong {
    return [self formattedWithPrecision:2 longFormat:YES];
}

- (NSString *)formattedWithPrecision:(NSUInteger)precision {
    return [self formattedWithPrecision:precision longFormat:NO];
}

- (NSString *)formattedWithPrecision:(NSUInteger)precision longFormat:(BOOL)longFormat {
    NSString *format = [NSString stringWithFormat:@"%%.%ldf %@", (long)precision, @"%@"];
    return [self formattedWithFormat:format longFormat:longFormat];
}

- (NSString *)formattedWithFormat:(NSString *)format {
    return [self formattedWithFormat:format longFormat:NO];
}

- (NSString *)formattedWithFormat:(NSString *)format longFormat:(BOOL)longFormat {
    NSString *unit = longFormat ? self.class.unitLong : self.class.unit;
    return [NSString stringWithFormat:format, self.value, unit];
}

+ (NSString *)unit {
    return @"";
}

+ (NSString *)unitLong {
    return [self unit];
}

+ (instancetype)value:(float)value {
    return [[[self class] alloc] initWithValue:value];
}

@end
