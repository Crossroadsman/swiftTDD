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
    
    func testBuzzOnMoveFive() {
        game.score = 4
        let result = game.play("buzz")
        XCTAssertTrue(result, "after four rounds, next play should be 'buzz'")
    }
    
    func testNotBuzzOnMoveSix() {
        game.score = 5
        let result = game.play("buzz")
        XCTAssertFalse(result, "after five rounds, next play should not be 'buzz'")
    }
    
    func testFizzBuzzOnMoveFifteen() {
        game.score = 14
        let result = game.play("fizzbuzz")
        XCTAssertTrue(result, "after fourteen rounds, next play should be 'fizzbuzz'")
    }
    
    func testNotFizzBuzzOnMoveSixteen() {
        game.score = 15
        let result = game.play("fizzbuzz")
        XCTAssertFalse(result, "after fifteen rounds, next play should not be 'fizzbuzz'")
    }
    
    func testNumberOnMoveOne() {
        game.score = 0
        let result = game.play("1")
        XCTAssertTrue(result, "after 0 rounds, next play should be number 1 (as String)")
    }
    
    func testNotNumberOnMoveThree() {
        game.score = 2
        let result = game.play("3")
        XCTAssertFalse(result, "after 2 rounds, next play should not be number")
    }

}
