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

@interface Pressure : NSObject

+ (Millibar *)millibar:(float)mbar;
+ (Pascal *)pascal:(float)pa;

@end
