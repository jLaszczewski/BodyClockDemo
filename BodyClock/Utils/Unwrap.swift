//
//  Unwrap.swift
//  BodyClock
//
//  Created by Jakub Łaszczewski on 13/11/2022.
//

import Foundation

enum GeneralError: Error {
    case missingExpressionValue
}

func Unwrap<T>(_ expression: @autoclosure () throws -> T?) throws -> T {
    guard let value = try expression() else {
        throw GeneralError.missingExpressionValue
    }
    
    return value
}
