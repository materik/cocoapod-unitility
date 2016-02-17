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

+ (Gram *)gram:(CGFloat)g;
+ (Kilogram *)kilogram:(CGFloat)kg;
+ (Ounce *)ounce:(CGFloat)oz;
+ (Pound *)pound:(CGFloat)lb;

@end
