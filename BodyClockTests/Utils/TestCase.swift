//
//  TestCase.swift
//  BodyClockTests
//
//  Created by Jakub Łaszczewski on 12/11/2022.
//

import Foundation

struct TestCase<Input, ExpectedOutput> {
    let input: Input
    let expectedOutput: ExpectedOutput
    
    init(_ input: Input, _ expectedOutput: ExpectedOutput) {
        self.input = input
        self.expectedOutput = expectedOutput
    }
}
