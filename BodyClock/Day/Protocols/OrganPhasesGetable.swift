//
//  OrganPhasesGetable.swift
//  BodyClock
//
//  Created by Jakub Łaszczewski on 17/11/2022.
//

import Foundation

enum GetOrganPhasesError: Error {
    case cantGetStartDate
}

protocol OrganPhasesGetable {
    func getPhases(for date: Date, basedOn calendar: Calendar) throws -> [OrganPhase]
}

extension OrganPhasesGetable {
    func getPhases(for date: Date, basedOn calendar: Calendar = .current) throws -> [OrganPhase] {
        guard let startDate = calendar.date(bySettingHour: 1, minute: 0, second: 0, of: date) else {
            throw GetOrganPhasesError.cantGetStartDate
        }
        let phaseTimeInterval: Double = 2 * 60 * 60
        let organPhasesDates = (0...12).map { startDate.addingTimeInterval(Double($0) * phaseTimeInterval) }
        let organPhasesStartAndEndDates = zip(organPhasesDates.dropLast(), organPhasesDates.dropFirst())
        
        return zip(Organ.allCases, organPhasesStartAndEndDates).map { OrganPhase(organ: $0, start: $1.0, end: $1.1) }
    }
}
