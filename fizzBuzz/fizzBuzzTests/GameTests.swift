//
//  GameTests.swift
//  fizzBuzz
//
//  Created by Alex Koumparos on 14/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

@testable import fizzBuzz
import XCTest

class GameTests: XCTestCase {

    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertEqual(game.score, 0, "score should start at zero")
    }
    
    func testIncrementScoreOnPlay() {
        game.play("1")
        XCTAssertEqual(game.score, 1, "score should be one after first play")
    }
    
    func testFizzOnMoveThree() {
        game.score = 2
        let result = game.play("fizz")
        XCTAssertTrue(result, "after two rounds, next play should be 'fizz'")
    }
    
    func testNotFizzOnMoveOne() {
        game.score = 0
        let result = game.play("fizz")
        XCTAssertFalse(result, "the first play should not be 'fizz'")
    }

}
