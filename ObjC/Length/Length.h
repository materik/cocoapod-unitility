//
//  Length.h
//  Pods
//
//  Created by materik on 15/02/16.
//
//

#import <Foundation/Foundation.h>

#import "Centimeter.h"
#import "Foot.h"
#import "Inch.h"
#import "Meter.h"

@protocol Length <NSObject>

@required
- (Centimeter *)convertToCentimeters;
- (Foot *)convertToFeet;
- (Inch *)convertToInches;
- (Meter *)convertToMeters;

@end
