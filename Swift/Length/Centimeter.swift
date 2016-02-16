//
//  Centimeter.swift
//  Pods
//
//  Created by materik on 16/02/16.
//
//

import Foundation

public class Centimeter: Unit, Length {
    
    override var unit: String { return "cm" }
    
    public func convertToCentimeter() -> Centimeter {
        return Centimeter(self.value)
    }
    
    public func convertToMeter() -> Meter {
        return Meter(self.value / 100.0)
    }
    
}
