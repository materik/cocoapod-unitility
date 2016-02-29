//
//  Created by materik on 28/12/15.
//

#import <Unitility/Length.h>
#import <XCTest/XCTest.h>

static float const kAccuracy = 0.01f;

@interface LengthTests : XCTestCase

@end

@implementation LengthTests

#pragma mark - Format

- (void)testFormatCentimeter {
    XCTAssertEqualObjects([[Centimeter value:2.2] formatted], @"2.20 cm");
    XCTAssertEqualObjects([[Centimeter value:2.2] formattedLong], @"2.20 centimeters");
}

- (void)testFormatFeet {
    XCTAssertEqualObjects([[Foot value:2.2] formatted], @"2.20 ft");
}

- (void)testFormatInches {
    XCTAssertEqualObjects([[Inch value:2.2] formatted], @"2.20 in");
}

- (void)testFormatMeter {
    XCTAssertEqualObjects([[Meter value:2.2] formatted], @"2.20 m");
}

#pragma mark - Convert

- (void)testConvertCentimeterToMeter {
    Centimeter *cm = [Centimeter value:2.2];
    Meter *m = [cm convertToMeter];
    XCTAssertEqualWithAccuracy(m.value, 0.022, 0.0001f);
    [cm setValue:2200];
    m = [cm convertToMeter];
    XCTAssertEqualWithAccuracy(m.value, 22, kAccuracy);
}

- (void)testConvertMeterToCentimeter {
    Meter *m = [Meter value:2.2];
    Centimeter *cm = [m convertToCentimeter];
    XCTAssertEqualWithAccuracy(cm.value, 220, 0.0001f);
    [m setValue:2200];
    cm = [m convertToCentimeter];
    XCTAssertEqualWithAccuracy(cm.value, 220000, kAccuracy);
}

@end
