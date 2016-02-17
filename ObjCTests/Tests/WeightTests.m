//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Unitility/Weight.h>
#import <XCTest/XCTest.h>

static CGFloat const kAccuracy = 0.01f;

@interface WeightTests : XCTestCase

@end

@implementation WeightTests

#pragma mark - Format

- (void)testFormatGram {
    XCTAssertEqualObjects([[Weight gram:2.2] formatted], @"2.20 g");
    XCTAssertEqualObjects([[Gram value:2.2] formatted], @"2.20 g");
}

- (void)testFormatKilogram {
    XCTAssertEqualObjects([[Weight kilogram:2.2] formatted], @"2.20 kg");
    XCTAssertEqualObjects([[Weight kilogram:3.333] formatted], @"3.33 kg");
    XCTAssertEqualObjects([[Weight kilogram:0.12345] formattedWithPrecision:0], @"0 kg");
    XCTAssertEqualObjects([[Weight kilogram:0.12345] formattedWithPrecision:5], @"0.12345 kg");
}

- (void)testFormatOunce {
    XCTAssertEqualObjects([[Weight ounce:2.2] formatted], @"2.20 oz");
}

- (void)testFormatPound {
    XCTAssertEqualObjects([[Weight pound:2.2] formatted], @"2.20 lb");
}

#pragma mark - Convert

- (void)testConvertGramToKilogram {
    Gram *g = [Weight gram:2.2];
    Kilogram *kg = [g convertToKilogram];
    XCTAssertEqualWithAccuracy(kg.value, 0.0022, 0.0001f);
    [g setValue:2200];
    kg = [g convertToKilogram];
    XCTAssertEqualWithAccuracy(kg.value, 2.2, kAccuracy);
}

- (void)testConvertGramToPound {
    Gram *g = [Weight gram:2.2];
    Pound *lb = [g convertToPound];
    XCTAssertEqualWithAccuracy(lb.value, 0.0048, 0.0001f);
    [g setValue:2200];
    lb = [g convertToPound];
    XCTAssertEqualWithAccuracy(lb.value, 4.85, kAccuracy);
}

- (void)testConvertKilogramToGram {
    Kilogram *kg = [Weight kilogram:2.2];
    Gram *g = [kg convertToGram];
    XCTAssertEqualWithAccuracy(g.value, 2200, 1.0f);
    [kg setValue:2200];
    g = [kg convertToGram];
    XCTAssertEqualWithAccuracy(g.value, 2200000, 1.0f);
}

- (void)testConvertKilogramToPound {
    Kilogram *kg = [Weight kilogram:2.2];
    Pound *lb = [kg convertToPound];
    XCTAssertEqualWithAccuracy(lb.value, 4.85, kAccuracy);
    [kg setValue:2200];
    lb = [kg convertToPound];
    XCTAssertEqualWithAccuracy(lb.value, 4850.17, kAccuracy);
}

- (void)testConvertPoundToKilogram {
    Pound *lb = [Weight pound:2.2];
    Kilogram *kg = [lb convertToKilogram];
    XCTAssertEqualWithAccuracy(kg.value, 1.00, kAccuracy);
    [lb setValue:2200];
    kg = [lb convertToKilogram];
    XCTAssertEqualWithAccuracy(kg.value, 997.9, kAccuracy);
}

- (void)testConvertPoundToGram {
    Pound *lb = [Weight pound:2.2];
    Gram *g = [lb convertToGram];
    XCTAssertEqualWithAccuracy(g.value, 997.91, kAccuracy);
    [lb setValue:2200];
    g = [lb convertToGram];
    XCTAssertEqualWithAccuracy(g.value, 997902.43, kAccuracy);
}

- (void)testConvertPoundToOunce {
    Pound *lb = [Weight pound:2.2];
    Ounce *oz = [lb convertToOunce];
    XCTAssertEqualWithAccuracy(oz.value, 35.2, kAccuracy);
    [lb setValue:2200];
    oz = [lb convertToOunce];
    XCTAssertEqualWithAccuracy(oz.value, 35200, kAccuracy);
}

@end
