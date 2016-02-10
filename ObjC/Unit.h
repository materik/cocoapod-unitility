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

- (NSString *)unitFormatted;
- (NSString *)formatted;
- (NSString *)formattedWithPrecision:(NSUInteger)precision;

@end
