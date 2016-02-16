//
//  UIViewTests.swift
//  Dimension
//
//  Created by materik on 256/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import Unitility
import UIKit
import XCTest

let kAccuracy: Float = 0.01

class UIViewTests: XCTestCase {

    // MARK: format
    
    func testFormatCentimeter() {
        XCTAssertEqual(Length.centimeter(2.2).formatted(), "2.20 cm")
        XCTAssertEqual(Centimeter(2.2).formatted(), "2.20 cm")
    }
    
    func testFormatMeter() {
        XCTAssertEqual(Length.meter(2.2).formatted(), "2.20 m")
        XCTAssertEqual(Meter(2.2).formatted(), "2.20 m")
    }
    
    // MARK: convert
    
    func testConvertCentimeterToMeter() {
        let cm = Centimeter(2.2)
        var m = cm.convertToMeter()
        XCTAssertEqualWithAccuracy(m.value, 0.022, accuracy: 0.0001)
        cm.value = 2200
        m = cm.convertToMeter()
        XCTAssertEqualWithAccuracy(m.value, 22, accuracy: kAccuracy)
    }
    
    func testConvertMeterToCentimeter() {
        let m = Meter(2.2)
        var cm = m.convertToCentimeter()
        XCTAssertEqualWithAccuracy(cm.value, 220, accuracy: kAccuracy)
        m.value = 2200
        cm = m.convertToCentimeter()
        XCTAssertEqualWithAccuracy(cm.value, 220000, accuracy: kAccuracy)
    }
    
}
