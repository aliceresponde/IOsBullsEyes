//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Alicia Beltran on 21/12/20.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game : Game!
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    func testSliderOver5() throws {
        XCTAssertEqual(game.points(sliderValue: game.target + 5), 95)
    }
    
    func testSliderUnder5() throws {
        XCTAssertEqual(game.points(sliderValue: game.target - 5), 95)
    }
}
