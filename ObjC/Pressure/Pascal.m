//
//  Pascal.m
//  Pods
//
//  Created by materik on 17/02/16.
//
//

#import "Pascal.h"

#import "Millibar.h"

@implementation Pascal

+ (NSString *)unit {
    return @"Pa";
}

- (Millibar *)convertToMillibars {
    return [Millibar value:self.value * 0.01f];
}

- (Pascal *)convertToPascals {
    return [Pascal value:self.value];
}

@end
