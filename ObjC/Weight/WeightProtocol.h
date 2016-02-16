//
//  WeightProtocol.h
//  Pods
//
//  Created by materik on 16/02/16.
//
//

#import <Foundation/Foundation.h>

@class Gram, Kilogram, Pound;

@protocol WeightProtocol <NSObject>

- (Gram *)convertToGram;
- (Kilogram *)convertToKilogram;
- (Pound *)convertToPound;

@end
