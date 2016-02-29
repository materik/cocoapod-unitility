//
//  Length.h
//  Pods
//
//  Created by materik on 15/02/16.
//
//

#import <Foundation/Foundation.h>

@class Centimeter, Foot, Inch, Meter;

@protocol Length <NSObject>

@required
- (Centimeter *)convertToCentimeter;
- (Foot *)convertToFoot;
- (Inch *)convertToInch;
- (Meter *)convertToMeter;

@end
