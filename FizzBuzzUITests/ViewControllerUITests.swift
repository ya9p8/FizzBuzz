//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Yemi Ajibola on 7/22/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
       super.tearDown()
    }
    
    func playTo14() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }
    
    
    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        
        numberButton.tap()
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "1")
        
    }
    
    func testTapNumberButtonIncrementsScoreTwice() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "2")
        
    }
    
    func testTapNumberButtonForFizz() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "3")
        
    }
    
    func testTapNumberButtonForBuzz() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapFizzBuzzButtonIncrementsTo15() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzbuzzButton = app.buttons["fizzBuzzButton"]
        
        playTo14()
        
        fizzbuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
}
