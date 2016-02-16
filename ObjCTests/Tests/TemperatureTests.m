//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Unitility/Temperature.h>
#import <XCTest/XCTest.h>

static CGFloat const kAccuracy = 0.01f;

@interface TemperatureTests : XCTestCase

@end

@implementation TemperatureTests

#pragma mark - Format

- (void)testFormatCelcius {
    XCTAssertEqualObjects([[Temperature celcius:2.2] formatted], @"2.2°C");
}

- (void)testFormatFarenheit {
    XCTAssertEqualObjects([[Temperature farenheit:2.2] formatted], @"2.2°F");
}

- (void)testFormatKelvin {
    XCTAssertEqualObjects([[Temperature kelvin:2.2] formatted], @"2.2K");
}

#pragma mark - Convert

@end
