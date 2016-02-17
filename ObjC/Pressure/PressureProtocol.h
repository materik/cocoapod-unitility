//
//  PressureProtocol.h
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import <Foundation/Foundation.h>

@class Millibar, Pascal;

@protocol PressureProtocol <NSObject>

- (Millibar *)convertToMillibars;
- (Pascal *)convertToPascals;

@end
