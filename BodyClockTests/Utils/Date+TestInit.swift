//
//  Date+TestInit.swift
//  BodyClockTests
//
//  Created by Jakub Łaszczewski on 12/11/2022.
//

import Foundation
import XCTest

extension Date {
    // Create once.
    private static let formatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.timeZone = .gmt
        return formatter
    }()
    
    /// Simple init to easily compose dates.
    /// It uses it's own date formatter singleton.
    /// Available only in test target.
    ///
    /// Default format: "dd.MM.y".
    /// - Parameters:
    ///   - dateString: String which will be use to compose date.
    ///   - format: Format of dateString.
    init(dateString: String, format: String = "dd.MM.y") throws {
        Date.formatter.dateFormat = format
        
        self = try XCTUnwrap(Date.formatter.date(from: dateString))
    }
    
    /// Simple init to easily compose time dates.
    /// It uses date's DateFormatter singleton.
    /// Available only in test target.
    ///
    /// Default format: "HH:mm".
    /// - Parameters:
    ///   - timeString: String which will be use to compose date.
    ///   - format: Format of dateString.
    init(timeString: String, format: String = "HH:mm:ss") throws {
        Date.formatter.dateFormat = format
        
        self = try XCTUnwrap(Date.formatter.date(from: timeString))
    }
    
    /// Simple init to easily compose dates with time.
    /// It uses it's own date formatter singleton.
    /// Available only in test target.
    ///
    /// Default format: "dd.MM.y'T'HH:mm:ss".
    /// - Parameters:
    ///   - dateAndString: String which will be use to compose date.
    ///   - format: Format of dateString.
    init(dateAndString: String, format: String = "dd.MM.y'T'HH:mm:ss") throws {
        Date.formatter.dateFormat = format
        
        self = try XCTUnwrap(Date.formatter.date(from: dateAndString))
    }
}
