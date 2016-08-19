//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Yemi Ajibola on 7/13/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore:Int? {
        didSet {
            guard let realScore = gameScore else { print("Game score is nil"); return }
            numberButton.setTitle("\(realScore)", forState: .Normal)
        }
    };
    
    var game:Game?

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        
        guard let unwrappedGame = game else { print("Game is nil"); return }
        
        gameScore = unwrappedGame.score
    }

    
    func play(move: Move) {
        
        guard let unwrappedGame = game else { print("Game is nil"); return }
        
        let response = unwrappedGame.play(move)
        
        gameScore = response.score
    }

    @IBAction func onButtonTapped(sender: UIButton) {
        switch sender {
        case numberButton:
            play(Move.Number)
        case fizzButton:
            play(Move.Fizz)
        case buzzButton:
            play(Move.Buzz)
        case fizzBuzzButton:
            play(Move.FizzBuzz)
        default:
            print("Invalid selection")
        }
    }

}

