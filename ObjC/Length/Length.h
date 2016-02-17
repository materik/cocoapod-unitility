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

+ (Centimeter *)centimeter:(float)cm;
+ (Foot *)foot:(float)ft;
+ (Inch *)inch:(float)in;
+ (Meter *)meter:(float)m;

@end
