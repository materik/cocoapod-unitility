//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Unitility/Pressure.h>
#import <XCTest/XCTest.h>

static CGFloat const kAccuracy = 0.01f;

@interface PressureTests : XCTestCase

@end

@implementation PressureTests

#pragma mark - Format

- (void)testFormatMillibar {
    XCTAssertEqualObjects([[Pressure millibar:2.2] formatted], @"2.20 mbar");
    XCTAssertEqualObjects([[Millibar value:2.2] formatted], @"2.20 mbar");
}

- (void)testFormatPascal {
    XCTAssertEqualObjects([[Pressure pascal:2.2] formatted], @"2.20 Pa");
}

#pragma mark - Convert

- (void)testConvertMillibarToPascal {
    Millibar *mbar = [Pressure millibar:2.2];
    Pascal *pa = [mbar convertToPascals];
    XCTAssertEqualWithAccuracy(pa.value, 220, kAccuracy);
    [mbar setValue:2200];
    pa = [mbar convertToPascals];
    XCTAssertEqualWithAccuracy(pa.value, 220000, kAccuracy);
}

@end
