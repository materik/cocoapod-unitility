//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Unitility/UnitilityWeight.h>
#import <XCTest/XCTest.h>

static float const kAccuracy = 0.01f;

@interface WeightTests : XCTestCase

@end

@implementation WeightTests

#pragma mark - Format

- (void)testFormatGram {
    XCTAssertEqualObjects([[Gram value:2.2] formatted], @"2.20 g");
}

- (void)testFormatKilogram {
    XCTAssertEqualObjects([[Kilogram value:2.2] formatted], @"2.20 kg");
    XCTAssertEqualObjects([[Kilogram value:3.333] formatted], @"3.33 kg");
    XCTAssertEqualObjects([[Kilogram value:0.12345] formattedWithPrecision:0], @"0 kg");
    XCTAssertEqualObjects([[Kilogram value:0.12345] formattedWithPrecision:5], @"0.12345 kg");
}

- (void)testFormatOunce {
    XCTAssertEqualObjects([[Ounce value:2.2] formatted], @"2.20 oz");
}

- (void)testFormatPound {
    XCTAssertEqualObjects([[Pound value:2.2] formatted], @"2.20 lb");
}

#pragma mark - Convert

- (void)testConvertGramToKilogram {
    Gram *g = [Gram value:2.2];
    Kilogram *kg = [g convertToKilograms];
    XCTAssertEqualWithAccuracy(kg.value, 0.0022, 0.0001f);
    [g setValue:2200];
    kg = [g convertToKilograms];
    XCTAssertEqualWithAccuracy(kg.value, 2.2, kAccuracy);
}

- (void)testConvertGramToPound {
    Gram *g = [Gram value:2.2];
    Pound *lb = [g convertToPounds];
    XCTAssertEqualWithAccuracy(lb.value, 0.0048, 0.0001f);
    [g setValue:2200];
    lb = [g convertToPounds];
    XCTAssertEqualWithAccuracy(lb.value, 4.85, kAccuracy);
}

- (void)testConvertKilogramToGram {
    Kilogram *kg = [Kilogram value:2.2];
    Gram *g = [kg convertToGrams];
    XCTAssertEqualWithAccuracy(g.value, 2200, 1.0f);
    [kg setValue:2200];
    g = [kg convertToGrams];
    XCTAssertEqualWithAccuracy(g.value, 2200000, 1.0f);
}

- (void)testConvertKilogramToPound {
    Kilogram *kg = [Kilogram value:2.2];
    Pound *lb = [kg convertToPounds];
    XCTAssertEqualWithAccuracy(lb.value, 4.85, kAccuracy);
    [kg setValue:2200];
    lb = [kg convertToPounds];
    XCTAssertEqualWithAccuracy(lb.value, 4850.17, kAccuracy);
}

- (void)testConvertPoundToKilogram {
    Pound *lb = [Pound value:2.2];
    Kilogram *kg = [lb convertToKilograms];
    XCTAssertEqualWithAccuracy(kg.value, 1.00, kAccuracy);
    [lb setValue:2200];
    kg = [lb convertToKilograms];
    XCTAssertEqualWithAccuracy(kg.value, 997.9, kAccuracy);
}

- (void)testConvertPoundToGram {
    Pound *lb = [Pound value:2.2];
    Gram *g = [lb convertToGrams];
    XCTAssertEqualWithAccuracy(g.value, 997.91, kAccuracy);
    [lb setValue:2200];
    g = [lb convertToGrams];
    XCTAssertEqualWithAccuracy(g.value, 997902.43, kAccuracy);
}

- (void)testConvertPoundToOunce {
    Pound *lb = [Pound value:2.2];
    Ounce *oz = [lb convertToOunces];
    XCTAssertEqualWithAccuracy(oz.value, 35.2, kAccuracy);
    [lb setValue:2200];
    oz = [lb convertToOunces];
    XCTAssertEqualWithAccuracy(oz.value, 35200, kAccuracy);
}

@end
