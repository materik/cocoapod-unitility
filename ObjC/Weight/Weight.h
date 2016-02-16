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
#import "Pound.h"

@interface Weight : NSObject

+ (Gram *)gram:(CGFloat)g;
+ (Kilogram *)kilogram:(CGFloat)kg;
+ (Pound *)Pound:(CGFloat)lb;

@end
