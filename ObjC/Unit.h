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

@property(nonatomic, assign) CGFloat value;

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithValue:(CGFloat)value;

- (NSString *)unit;
- (NSString *)formatted;
- (NSString *)formattedWithPrecision:(NSUInteger)precision;

+ (instancetype)value:(CGFloat)value;

@end
