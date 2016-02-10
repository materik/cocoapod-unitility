//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Unit/Length.h>
#import <XCTest/XCTest.h>

static CGFloat const kAccuracy = 0.01f;

@interface LengthTests : XCTestCase

@end

@implementation LengthTests

#pragma mark - Format

- (void)testFormatCentimeter {
    XCTAssertEqualObjects([[Length centimeter:2.2] formatted], @"2.20 cm");
}

- (void)testFormatFeet {
    XCTAssertEqualObjects([[Length foot:2.2] formatted], @"2.20 ft");
}

- (void)testFormatInches {
    XCTAssertEqualObjects([[Length inch:2.2] formatted], @"2.20 in");
}

- (void)testFormatMeter {
    XCTAssertEqualObjects([[Length meter:2.2] formatted], @"2.20 m");
}

#pragma mark - Convert

- (void)testConvertCentimeterToMeter {
    Length *cm = [Length centimeter:2.2];
    [cm convertToMeter];
    XCTAssertEqualWithAccuracy(cm.value, 0.022, 0.0001f);
    [cm convertToCentimeter];
    [cm setValue:2200];
    [cm convertToMeter];
    XCTAssertEqualWithAccuracy(cm.value, 22, kAccuracy);
}

- (void)testConvertMeterToCentimeter {
    Length *m = [Length meter:2.2];
    [m convertToCentimeter];
    XCTAssertEqualWithAccuracy(m.value, 220, 0.0001f);
    [m convertToMeter];
    [m setValue:2200];
    [m convertToCentimeter];
    XCTAssertEqualWithAccuracy(m.value, 220000, kAccuracy);
}

@end
