//
//  Unit.swift
//  Pods
//
//  Created by materik on 16/02/16.
//
//

import Foundation

public class Unit: CustomStringConvertible {
    
    public var value: Float = 0.0
    public var description: String { return self.formatted() }
    internal var unit: String { return "" }
    
    public required init(_ value: Float) {
        self.value = value
    }
    
    public func formatted(withPrecision precision: Int = 2) -> String {
        let format = String(format: "%%.%df", precision)
        let value = String(format: format, self.value)
        return "\(value) \(self.unit)"
    }
    
}
