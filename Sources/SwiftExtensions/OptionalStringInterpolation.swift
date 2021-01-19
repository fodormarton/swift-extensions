//
//  OptionalStringInterpolation.swift
//  
//
//  Created by Marton Fodor on 19/01/2021.
//

import Foundation

extension String.StringInterpolation {
    mutating func appendInterpolation<T: CustomStringConvertible>(_ value: T?) {
        appendInterpolation(value, defaultValue: "nil")
    }

    mutating func appendInterpolation<T: CustomStringConvertible>(_ value: T?, defaultValue: @autoclosure () -> String) {
        appendInterpolation(value ?? defaultValue() as CustomStringConvertible)
    }
}
