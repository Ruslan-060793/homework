//
//  SwiftUIRaywenderlichTests.swift
//  SwiftUIRaywenderlichTests
//
//  Created by Ruslan on 07.08.2022.
//

import XCTest
@testable import SwiftUIRaywenderlich

class SwiftUIRaywenderlichTests: XCTestCase {
    var game: Game!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }

    
    func testScorePositive(){
        let guess = game.target + 5
        let score = game.point(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegotive(){
        let guess = game.target - 5
        let score = game.point(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
}


