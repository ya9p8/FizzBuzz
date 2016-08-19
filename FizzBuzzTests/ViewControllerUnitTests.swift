//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Yemi Ajibola on 7/17/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle());
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        let _ = viewController.view;
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play(Move.Number);
        let newScore = viewController.gameScore;
        
        XCTAssertEqual(newScore, 1);
    }
    
    func testMove2IncrementsScore() {
        viewController.play(Move.Number);
        viewController.play(Move.Number);
        
        let newScore = viewController.gameScore;
        
        XCTAssertEqual(newScore, 2);
    }
    
    func testHasGame() {
        XCTAssertNotNil(viewController.game);
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2;
        viewController.play(Move.Fizz);
        
        XCTAssertEqual(viewController.gameScore, 3);
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4;
        viewController.play(Move.Buzz);
        
        XCTAssertEqual(viewController.gameScore, 5);
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14;
        viewController.play(Move.FizzBuzz);
        
        XCTAssertEqual(viewController.gameScore, 15);
    }
    
    func testWrongMoveScoreNotIncremented() {
        viewController.play(Move.Fizz);
        
        XCTAssertEqual(viewController.gameScore, 0);
    }
    
}
