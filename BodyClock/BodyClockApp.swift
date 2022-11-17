//
//  BodyClockApp.swift
//  BodyClock
//
//  Created by Jakub Łaszczewski on 12/11/2022.
//

import SwiftUI

@main
struct BodyClockApp: App {
    var body: some Scene {
        WindowGroup {
            DayView(date: Date())
        }
    }
}
