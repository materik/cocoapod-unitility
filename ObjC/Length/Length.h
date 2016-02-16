//
//  Length.h
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import <Foundation/Foundation.h>

#import "Centimeter.h"
#import "Foot.h"
#import "Inch.h"
#import "Meter.h"

@interface Length : NSObject

+ (Centimeter *)centimeter:(CGFloat)cm;
+ (Foot *)foot:(CGFloat)ft;
+ (Inch *)inch:(CGFloat)in;
+ (Meter *)meter:(CGFloat)m;

@end
