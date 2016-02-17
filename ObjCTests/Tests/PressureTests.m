//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Unitility/Pressure.h>
#import <XCTest/XCTest.h>

static float const kAccuracy = 0.01f;

@interface PressureTests : XCTestCase

@end

@implementation PressureTests

#pragma mark - Format

- (void)testFormatMillibar {
    XCTAssertEqualObjects([[Millibar value:2.2] formatted], @"2.20 mbar");
}

- (void)testFormatPascal {
    XCTAssertEqualObjects([[Pascal value:2.2] formatted], @"2.20 Pa");
}

#pragma mark - Convert

- (void)testConvertMillibarToPascal {
    Millibar *mbar = [Millibar value:2.2];
    Pascal *pa = [mbar convertToPascals];
    XCTAssertEqualWithAccuracy(pa.value, 220, kAccuracy);
    [mbar setValue:2200];
    pa = [mbar convertToPascals];
    XCTAssertEqualWithAccuracy(pa.value, 220000, kAccuracy);
}

@end
