//
//  Brain.swift
//  FizzBuzz
//
//  Created by Yemi Ajibola on 7/13/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

import UIKit

class Brain: NSObject {
    
    func isDivisibleBy(number:Int, divisor:Int) -> Bool {
        return number % divisor == 0;
    }

    func isDivisibleByThree(number: Int) -> Bool {
        
       return self.isDivisibleBy(number, divisor: 3);
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        
       return self.isDivisibleBy(number, divisor: 5);
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        
       return self.isDivisibleBy(number, divisor: 15);

    }
    
    func check(number:Int) -> Move {
        if isDivisibleByFifteen(number) {
            return Move.FizzBuzz;
        }
        else if isDivisibleByFive(number){
            return Move.Buzz;
        }
        else if isDivisibleByThree(number) {
            return Move.Fizz;
        }
        else {
            return Move.Number;
        }
    }
}
