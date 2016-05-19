//
//  ViewControllerUnitTests.swift
//  fizzBuzz
//
//  Created by Alex Koumparos on 16/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

@testable import fizzBuzz
import XCTest

class ViewControllerUnitTests: XCTestCase {
    
    /*
     iOS's architecture requires that we initialise our initial (main) storyboard and instantiate our viewcontroller from there
     */

    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        // see
        // https://www.natashatherobot.com/ios-testing-view-controllers-swift/
        // for more explanation of this code
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController // what type would it be without this casting?
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
        
    }
    
    override func tearDown() {

        
        super.tearDown()
    }
    
    func testMoveOneIncrementsScore() {
        viewController.play("1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1, "score should be 1 after '1' was played")
    }
    
    func testMove2IncrementScore() {
        viewController.play("1")
        viewController.play("2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2, "score should be 2 after '1' was successfully played")
    }
    
}
