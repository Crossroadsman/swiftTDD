//
//  GameTests.swift
//  fizzBuzz
//
//  Created by Alex Koumparos on 14/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import XCTest
@testable import fizzBuzz

class GameTests: XCTestCase {

    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertEqual(game.score, 0)
    }
    

}
