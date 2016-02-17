//
//  Pressure.h
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import <Foundation/Foundation.h>

#import "Millibar.h"
#import "Pascal.h"

@protocol Pressure <NSObject>

@required
- (Millibar *)convertToMillibars;
- (Pascal *)convertToPascals;

@end
