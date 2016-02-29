//
//  Pressure.h
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import <Foundation/Foundation.h>

@class Bar, Hectopascal, Millibar, MillimeterOfMercury, Pascal;

@protocol Pressure <NSObject>

@required
- (Bar *)convertToBar;
- (Hectopascal *)convertToHectopascal;
- (Millibar *)convertToMillibar;
- (MillimeterOfMercury *)convertToMillimeterOfMercury;
- (Pascal *)convertToPascal;

@end
