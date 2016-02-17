//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Unitility/Temperature.h>
#import <XCTest/XCTest.h>

static float const kAccuracy = 0.01f;

@interface TemperatureTests : XCTestCase

@end

@implementation TemperatureTests

#pragma mark - Format

- (void)testFormatCelcius {
    XCTAssertEqualObjects([[Temperature celcius:2.2] formatted], @"2.20 °C");
}

- (void)testFormatFarenheit {
    XCTAssertEqualObjects([[Temperature farenheit:2.2] formatted], @"2.20 °F");
}

- (void)testFormatKelvin {
    XCTAssertEqualObjects([[Temperature kelvin:2.2] formatted], @"2.20 K");
}

#pragma mark - Convert

- (void)testConvertCelciusToFarenheit {
    Celcius *c = [Temperature celcius:2.2];
    Farenheit *f = [c convertToFarenheit];
    XCTAssertEqualWithAccuracy(f.value, 35.96, kAccuracy);
    [c setValue:100];
    f = [c convertToFarenheit];
    XCTAssertEqualWithAccuracy(f.value, 212, kAccuracy);
}

@end
