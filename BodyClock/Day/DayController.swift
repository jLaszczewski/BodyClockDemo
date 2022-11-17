//
//  DayController.swift
//  BodyClock
//
//  Created by Jakub Łaszczewski on 13/11/2022.
//

import SwiftUI

final class DayViewModel: ObservableObject {
    @Published var phases: [OrganPhase] = []
    @Published var errorMessage: LocalizedStringKey?
    private var date: Date
    private let dateFormatter = DateFormatter()
    
    init(date: Date) {
        self.date = date
    }
    
    func loadPhases() {
        do {
            errorMessage = nil
            phases = try getPhases(for: date)
        } catch {
            errorMessage = "Something goes wrong!"
        }
    }
    
    func name(for organ: Organ) -> LocalizedStringKey {
        switch organ {
            case .heart: return "Heart"
            case .smallIntestine: return "Small Intestine"
            case .bladder: return "Bladder"
            case .kidney: return "Kidney"
            case .pericardium: return "Pericardium"
            case .tripleBurner: return "Triple Burner"
            case .gallBladder: return "Gall Bladder"
            case .liver: return "Liver"
            case .lung: return "Lung"
            case .largeIntestine: return "Large Intestine"
            case .stomach: return "Stomach"
            case .spleen: return "Spleen"
        }
    }
    
    func isCurrent(organPhase: OrganPhase) -> Bool {
        (organPhase.start ..< organPhase.end).contains(date)
    }
}


// MARK: - Phase protocols

extension DayViewModel: OrganPhasesGetable {}
