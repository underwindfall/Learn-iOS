//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Qifan YANG on 04/04/2021.
//

import XCTest
//import header file
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game :Game!
    
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    
    func testScorePostive() {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
}
