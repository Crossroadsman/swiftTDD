//
//  UtilTests.swift
//  CheckForPrime
//
//  Created by Alex Koumparos on 19/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import XCTest
@testable import CheckForPrime

class UtilTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testTwoIsPrime() {
        XCTAssertTrue(Util().isPrime(2), "isPrime() should return true for 2")
    }
    
    func testOneIsNotPrime() {
        XCTAssertFalse(Util().isPrime(1), "isPrime() should return false for 1")
    }
    
    func testThreeIsPrime() {
        XCTAssertTrue(Util().isPrime(3), "isPrime(3) should return true")
    }
    
    func testFourIsNotPrime() {
        XCTAssertFalse(Util().isPrime(4), "isPrime(4) should return false")
    }
    
    func testFiveIsPrime() {
        XCTAssertTrue(Util().isPrime(5), "isPrime(5) should return true")
    }

}
