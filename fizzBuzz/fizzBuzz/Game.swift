//
//  Game.swift
//  fizzBuzz
//
//  Created by Alex Koumparos on 14/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import Foundation

class Game {

    
    /* the example at
    https://gist.github.com/yvettecook/74dc713c796b2339c384
    has brain and score being declared in the class but variables being assigned in the init().
    Looks like the init() is necessary because the example demo is a subclass of NSObject and an initialiser is required to call super.
    So far, we haven't needed to subclass NSObject, and since TDD prohibits us from writing code that is not the minimum required to pass the tests written so far, we cannot actually subclass NSObject at this point.
    In the future, it may prove to be necessary, and when that happens we may need to move the brain = Brain() and score = 0 into the initialiser.
    */
    
    let brain = Brain()
    
    var score = 0
    
    func play(move: String) -> Bool {
        
        switch move {
        case _ where move == brain.response(score + 1):
            score += 1
            return true
        default:
            return false
        }
       
    }
    
    
    
}
