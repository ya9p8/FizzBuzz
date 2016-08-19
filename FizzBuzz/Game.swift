//
//  Game.swift
//  FizzBuzz
//
//  Created by Yemi Ajibola on 7/14/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

import UIKit

class Game: NSObject {
    
    var score:Int;
    let brain = Brain();
    
    override init() {
        score = 0;
        super.init();
    }
    
    func play(move:Move) -> (right:Bool, score:Int) {
        
        let result = brain.check(score + 1);
        
        if result == move {
            score += 1;
            return (true, score);
        }
        else {
            return (false, score);
        }
        
    }

}
