//
//  OrganPhase.swift
//  BodyClock
//
//  Created by Jakub Łaszczewski on 13/11/2022.
//

import Foundation
import SwiftUI

enum Organ: Equatable, CaseIterable {
    case liver
    case lung
    case largeIntestine
    case stomach
    case spleen
    case heart
    case smallIntestine
    case bladder
    case kidney
    case pericardium
    case tripleBurner
    case gallBladder
}

struct OrganPhase: Equatable, Identifiable {
    var id: Int { organ.hashValue }
    let organ: Organ
    let start: Date
    let end: Date
}
