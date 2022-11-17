//
//  SafeSubscript.swift
//  BodyClock
//
//  Created by Jakub Łaszczewski on 15/11/2022.
//

import Foundation

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

