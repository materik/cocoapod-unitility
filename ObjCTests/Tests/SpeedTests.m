//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Unitility/Speed.h>
#import <XCTest/XCTest.h>

static float const kAccuracy = 0.01f;

@interface SpeedTests : XCTestCase

@end

@implementation SpeedTests

#pragma mark - Format

- (void)testFormatKilometerPerHour {
    XCTAssertEqualObjects([[KilometerPerHour value:2.2] formatted], @"2.20 km/h");
}

- (void)testFormatKnot {
    XCTAssertEqualObjects([[Knot value:2.2] formatted], @"2.20 kn");
}

- (void)testFormatMeterPerSecond {
    XCTAssertEqualObjects([[MeterPerSecond value:2.2] formatted], @"2.20 m/s");
}

- (void)testFormatMilePerHour {
    XCTAssertEqualObjects([[MilePerHour value:2.2] formatted], @"2.20 mi/h");
}

#pragma mark - Convert

- (void)testConvertKilometerPerHourToKnot {
    KilometerPerHour *kmph = [KilometerPerHour value:2.2];
    Knot *kn = [kmph convertToKnots];
    XCTAssertEqualWithAccuracy(kn.value, 1.187904968f, kAccuracy);
    [kmph setValue:2200];
    kn = [kmph convertToKnots];
    XCTAssertEqualWithAccuracy(kn.value, 1187.904967603f, kAccuracy);
}

@end
