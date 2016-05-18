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
    
    func test() {
        XCTAssertTrue(true)
    }

    
}