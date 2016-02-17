//
//  Weight.h
//  Pods
//
//  Created by materik on 10/02/16.
//
//

#import <Foundation/Foundation.h>

#import "Gram.h"
#import "Kilogram.h"
#import "Ounce.h"
#import "Pound.h"

@interface Weight : NSObject

+ (Gram *)gram:(float)g;
+ (Kilogram *)kilogram:(float)kg;
+ (Ounce *)ounce:(float)oz;
+ (Pound *)pound:(float)lb;

@end
