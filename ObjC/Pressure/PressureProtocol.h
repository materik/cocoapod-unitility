//
//  Pressure.h
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import <Foundation/Foundation.h>

@class Bar, Hectopascal, Millibar, MillimeterMercury, Pascal;

@protocol Pressure <NSObject>

@required
- (Bar *)convertToBars;
- (Hectopascal *)convertToHectopascal;
- (Millibar *)convertToMillibars;
- (MillimeterMercury *)convertToMillimeterMercury;
- (Pascal *)convertToPascal;

@end
