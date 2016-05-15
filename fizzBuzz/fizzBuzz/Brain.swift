//
//  Brain.swift
//  fizzBuzz
//
//  Created by Alex Koumparos on 11/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import Foundation

class Brain {
    /**
    Checks if an Int is divisible by another Int with no remainder. Returns true if so.
     
     - parameter number: (Int) the element to check if it can be evenly divided by N
     - parameter N: (Int) (internally n). The divisor
     - returns: Bool
     */
    func isDivisibleByN(number: Int, N n: Int) -> Bool {
        return 0 == number % n
    }
    
    /**
    Gives the String output for any given Int input
     
     - parameter number: (Int) the number to get a fizzbuzz reponse to
     - returns: String (fizzbuzz if divisible by 3 and 5, fizz if by 3, buzz if by 5, otherwise the input number (but expressed as a String)
     */
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

