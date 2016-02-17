//
//  Unit.h
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Unit : NSObject

@property(nonatomic, assign) float value;

- (instancetype)init NS_UNAVAILABLE;

- (NSString *)formatted;
- (NSString *)formattedLong;
- (NSString *)formattedWithPrecision:(NSUInteger)precision;
- (NSString *)formattedWithPrecision:(NSUInteger)precision longFormat:(BOOL)longFormat;
- (NSString *)formattedWithFormat:(NSString *)format;
- (NSString *)formattedWithFormat:(NSString *)format longFormat:(BOOL)longFormat;

+ (NSString *)unit;
+ (NSString *)unitLong;
+ (instancetype)value:(float)value;

@end
