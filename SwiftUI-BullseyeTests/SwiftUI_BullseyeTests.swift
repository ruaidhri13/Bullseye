//
//  SwiftUI_BullseyeTests.swift
//  SwiftUI-BullseyeTests
//
//  Created by Ruaidhrí O'Neill on 19/08/2021.
//

import XCTest
@testable import SwiftUI_Bullseye

class SwiftUI_BullseyeTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    func testScorePositive() {
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
