//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Unit/Weight.h>
#import <XCTest/XCTest.h>

static CGFloat const kAccuracy = 0.01f;

@interface WeightTests : XCTestCase

@end

@implementation WeightTests

#pragma mark - Format

- (void)testFormatGram {
    XCTAssertEqualObjects([[Weight gram:2.2] formatted], @"2.20 g");
}

- (void)testFormatKilogram {
    XCTAssertEqualObjects([[Weight kilogram:2.2] formatted], @"2.20 kg");
    XCTAssertEqualObjects([[Weight kilogram:3.333] formatted], @"3.33 kg");
    XCTAssertEqualObjects([[Weight kilogram:0.12345] formattedWithPrecision:0], @"0 kg");
    XCTAssertEqualObjects([[Weight kilogram:0.12345] formattedWithPrecision:5], @"0.12345 kg");
}

- (void)testFormatPounds {
    XCTAssertEqualObjects([[Weight pounds:2.2] formatted], @"2.20 lb");
}

#pragma mark - Convert

- (void)testConvertGramToKilogram {
    Weight *g = [Weight gram:2.2];
    [g convertToKilogram];
    XCTAssertEqualWithAccuracy(g.value, 0.0022, 0.0001f);
    [g convertToGram];
    [g setValue:2200];
    [g convertToKilogram];
    XCTAssertEqualWithAccuracy(g.value, 2.2, kAccuracy);
}

- (void)testConvertGramToPounds {
    Weight *g = [Weight gram:2.2];
    [g convertToPounds];
    XCTAssertEqualWithAccuracy(g.value, 0.0048, 0.0001f);
    [g convertToGram];
    [g setValue:2200];
    [g convertToPounds];
    XCTAssertEqualWithAccuracy(g.value, 4.85, kAccuracy);
}

- (void)testConvertKilogramToGram {
    Weight *kg = [Weight kilogram:2.2];
    [kg convertToGram];
    XCTAssertEqualWithAccuracy(kg.value, 2200, 1.0f);
    [kg convertToKilogram];
    [kg setValue:2200];
    [kg convertToGram];
    XCTAssertEqualWithAccuracy(kg.value, 2200000, 1.0f);
}

- (void)testConvertKilogramToPounds {
    Weight *kg = [Weight kilogram:2.2];
    [kg convertToPounds];
    XCTAssertEqualWithAccuracy(kg.value, 4.85, kAccuracy);
    [kg convertToKilogram];
    [kg setValue:2200];
    [kg convertToPounds];
    XCTAssertEqualWithAccuracy(kg.value, 4850.17, kAccuracy);
}

- (void)testConvertPoundsToKilogram {
    Weight *lb = [Weight pounds:2.2];
    [lb convertToKilogram];
    XCTAssertEqualWithAccuracy(lb.value, 1.00, kAccuracy);
    [lb convertToPounds];
    [lb setValue:2200];
    [lb convertToKilogram];
    XCTAssertEqualWithAccuracy(lb.value, 997.9, kAccuracy);
}

- (void)testConvertPoundsToGram {
    Weight *lb = [Weight pounds:2.2];
    [lb convertToGram];
    XCTAssertEqualWithAccuracy(lb.value, 997.91, kAccuracy);
    [lb convertToPounds];
    [lb setValue:2200];
    [lb convertToGram];
    XCTAssertEqualWithAccuracy(lb.value, 997902.42, kAccuracy);
}

@end
