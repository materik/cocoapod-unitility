//
//  Weight.h
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import <Foundation/Foundation.h>

@class Gram, Kilogram, Ounce, Pound;

@protocol Weight <NSObject>

@required
- (Gram *)convertToGrams;
- (Kilogram *)convertToKilograms;
- (Ounce *)convertToOunces;
- (Pound *)convertToPounds;

@end
