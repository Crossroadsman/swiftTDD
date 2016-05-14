//
//  Brain.swift
//  fizzBuzz
//
//  Created by Alex Koumparos on 11/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByN(number: Int, divisor: Int) -> Bool {
        return 0 == number % divisor
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleByN(number, divisor: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleByN(number, divisor: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        // for the fizzBuzz case
        return isDivisibleByN(number, divisor: 15)
    }
    
    func response(number: Int) -> String {
        switch number {
        case _ where isDivisibleByFifteen(number):
            return "fizzbuzz"
        case _ where isDivisibleByThree(number):
            return "fizz"
        case _ where isDivisibleByFive(number):
            return "buzz"
        default:
            return String(number)
        }
    }
    
}

