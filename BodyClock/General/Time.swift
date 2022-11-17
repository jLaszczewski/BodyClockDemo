//
//  Time.swift
//  BodyClock
//
//  Created by Jakub Łaszczewski on 13/11/2022.
//

import Foundation

struct Time: Equatable {
    let hour: Int
    let minute: Int
    let second: Int
    let nanosecond: Int
    
    init(hour: Int, minute: Int, second: Int = 0, nanosecond: Int = 0) {
        self.hour = hour
        self.minute = minute
        self.second = second
        self.nanosecond = nanosecond
    }
    
    static var zero: Time {
        Time(hour: 0, minute: 0, second: 0, nanosecond: 0)
    }
}
