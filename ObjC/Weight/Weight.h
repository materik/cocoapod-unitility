//
//  Weight.h
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import <Foundation/Foundation.h>

#import "Gram.h"
#import "Kilogram.h"
#import "Ounce.h"
#import "Pound.h"

@protocol Weight <NSObject>

- (Gram *)convertToGrams;
- (Kilogram *)convertToKilograms;
- (Ounce *)convertToOunces;
- (Pound *)convertToPounds;

@end
