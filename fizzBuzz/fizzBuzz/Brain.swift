//
//  Brain.swift
//  fizzBuzz
//
//  Created by Alex Koumparos on 11/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByN(number: Int, N n: Int) -> Bool {
        return 0 == number % n
    }
    
    func response(number: Int) -> String {
        switch number {
        case _ where isDivisibleByN(number, N: 15):
            return "fizzbuzz"
        case _ where isDivisibleByN(number, N: 3):
            return "fizz"
        case _ where isDivisibleByN(number, N: 5):
            return "buzz"
        default:
            return String(number)
        }
    }
    
}

