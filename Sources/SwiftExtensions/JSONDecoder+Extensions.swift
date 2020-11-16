//
//  JSONDecoder+Extensions.swift
//  SideShiftSDK
//
//  Created by Marton Fodor on 30/08/2020.
//

import Foundation

public enum JSONError: Error {
    case decodingError(underlyingError: Error)
}

extension JSONDecoder {
    public static let iso8601: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
}
