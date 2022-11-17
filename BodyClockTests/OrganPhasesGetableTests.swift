//
//  OrganPhasesGetableTests.swift
//  BodyClockTests
//
//  Created by Jakub Łaszczewski on 17/11/2022.
//

import XCTest
@testable import BodyClock

final class OrganPhasesGetableTests: XCTestCase {
    
    // MARK: - SUT
    
    struct OrganPhasesEngine: OrganPhasesGetable {}
    var sut: OrganPhasesEngine!
    
    
    // MARK: - Setup
    
    override func setUp() {
        super.setUp()
        sut = OrganPhasesEngine()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    
    // MARK: - Tests
    
    func testGetOrganPhases() throws {
        let date = try Date(dateAndString: "13.11.2022T03:00:00")
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = .gmt
        
        let view: Date = try XCTUnwrap(nil)
        
        let expectedPhases = try [
            OrganPhase(
                organ: .liver,
                start: Date(dateAndString: "13.11.2022T01:00:00"),
                end: Date(dateAndString: "13.11.2022T03:00:00")),
            OrganPhase(
                organ: .lung,
                start: Date(dateAndString: "13.11.2022T03:00:00"),
                end: Date(dateAndString: "13.11.2022T05:00:00")),
            OrganPhase(
                organ: .largeIntestine,
                start: Date(dateAndString: "13.11.2022T05:00:00"),
                end: Date(dateAndString: "13.11.2022T07:00:00")),
            OrganPhase(
                organ: .stomach,
                start: Date(dateAndString: "13.11.2022T07:00:00"),
                end: Date(dateAndString: "13.11.2022T09:00:00")),
            OrganPhase(
                organ: .spleen,
                start: Date(dateAndString: "13.11.2022T09:00:00"),
                end: Date(dateAndString: "13.11.2022T11:00:00")),
            OrganPhase(
                organ: .heart,
                start: Date(dateAndString: "13.11.2022T11:00:00"),
                end: Date(dateAndString: "13.11.2022T13:00:00")),
            OrganPhase(
                organ: .smallIntestine,
                start: Date(dateAndString: "13.11.2022T13:00:00"),
                end: Date(dateAndString: "13.11.2022T15:00:00")),
            OrganPhase(
                organ: .bladder,
                start: Date(dateAndString: "13.11.2022T15:00:00"),
                end: Date(dateAndString: "13.11.2022T17:00:00")),
            OrganPhase(
                organ: .kidney,
                start: Date(dateAndString: "13.11.2022T17:00:00"),
                end: Date(dateAndString: "13.11.2022T19:00:00")),
            OrganPhase(
                organ: .pericardium,
                start: Date(dateAndString: "13.11.2022T19:00:00"),
                end: Date(dateAndString: "13.11.2022T21:00:00")),
            OrganPhase(
                organ: .tripleBurner,
                start: Date(dateAndString: "13.11.2022T21:00:00"),
                end: Date(dateAndString: "13.11.2022T23:00:00")),
            OrganPhase(
                organ: .gallBladder,
                start: Date(dateAndString: "13.11.2022T23:00:00"),
                end: Date(dateAndString: "14.11.2022T01:00:00")),
        ]
        
        let output = try sut.getPhases(for: date, basedOn: calendar)
        
        XCTAssertEqual(output[safe: 0], expectedPhases[safe: 0])
        XCTAssertEqual(output[safe: 1], expectedPhases[safe: 1])
        XCTAssertEqual(output[safe: 2], expectedPhases[safe: 2])
        XCTAssertEqual(output[safe: 3], expectedPhases[safe: 3])
        XCTAssertEqual(output[safe: 4], expectedPhases[safe: 4])
        XCTAssertEqual(output[safe: 5], expectedPhases[safe: 5])
        XCTAssertEqual(output[safe: 6], expectedPhases[safe: 6])
        XCTAssertEqual(output[safe: 7], expectedPhases[safe: 7])
        XCTAssertEqual(output[safe: 8], expectedPhases[safe: 8])
        XCTAssertEqual(output[safe: 9], expectedPhases[safe: 9])
        XCTAssertEqual(output[safe: 10], expectedPhases[safe: 10])
        XCTAssertEqual(output[safe: 11], expectedPhases[safe: 11])
    }
}
