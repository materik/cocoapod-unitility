//
//  Meter.swift
//  Pods
//
//  Created by materik on 16/02/16.
//
//

import Foundation

public class Meter: Unit, LengthProtocol {
    
    override var unit: String { return "m" }
    
    public func convertToCentimeter() -> Centimeter {
        return Centimeter(self.value * 100.0)
    }
    
    public func convertToMeter() -> Meter {
        return Meter(self.value)
    }
    
}
