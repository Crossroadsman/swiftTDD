//
//  BrainTests.swift
//  fizzBuzz
//
//  Created by Alex Koumparos on 11/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

@testable import fizzBuzz
import XCTest

class BrainTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    let brain = Brain()

    func testDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        XCTAssertTrue(result, ".isDivisibleByThree(3) should be true")
    }
    
    func testNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(1)
        XCTAssertFalse(result, ".isDivisibleByThree(1) should be false")
    }
    
    func testDivisibleByFive() {
        let result = brain.isDivisibleByFive(5)
        XCTAssertTrue(result, ".isDivisibleByFive(5) should be true")
    }
    
    func testNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(1)
        XCTAssertFalse(result, ".isDivisibleByFive(1) should be false")
    }
    
    func testDivisibleByFifteen() {
        // satisfies the fizzbuzz (3 and 5) case
        let result = brain.isDivisibleByFifteen(15)
        XCTAssertTrue(result, ".isDivisibleByFifteen(15) should be true")
    }
    
    func testNotDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(1)
        XCTAssertFalse(result, ".isDivisibleByFifteen(1) should be false")
    }
    
    func testFizzFromThree() {
        let result = brain.response(3)
        XCTAssertEqual(result, "fizz", ".response(3) should be 'fizz'")
    }
    
    func testNotFizzFromNotThree() {
        let result = brain.response(1)
        XCTAssertNotEqual(result, "fizz", ".response(1) should not be 'fizz'")
    }
    
    func testBuzzFromFive() {
        let result = brain.response(5)
        XCTAssertEqual(result, "buzz", ".response(5) should be 'buzz'")
    }
    
    func testBuzzFromNotFive() {
        let result = brain.response(1)
        XCTAssertNotEqual(result, "buzz", ".response(1) should not be 'buzz'")
    }
    
    func testFizzBuzzFromFifteen() {
        let result = brain.response(15)
        XCTAssertEqual(result, "fizzbuzz", ".response(15) should be 'fizzbuzz'")
    }
    
    func testFizzBuzzFromNotFifteen() {
        let result = brain.response(1)
        XCTAssertNotEqual(result, "fizzbuzz", ".response(1) should not be 'fizzbuzz'")
    }
    
    func testStringNumberFromOne() {
        let result = brain.response(1)
        XCTAssertEqual(result, "1", ".response(1) should be '1' (as a String)")
    }
    
}
