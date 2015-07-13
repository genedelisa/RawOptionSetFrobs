//
//  RawOptionSetTypeFrobsTests.swift
//  RawOptionSetTypeFrobsTests
//
//  Created by Gene De Lisa on 7/13/15.
//  Copyright © 2015 Gene De Lisa. All rights reserved.
//

import XCTest


class RawOptionSetTypeFrobsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
   
    
    func testShouldHave() {
        
        
        let ingredients:HoagieIngredients = .Lettuce | .Tomatoes
        
        XCTAssertTrue( ingredients & .Tomatoes != .None, "has lettuce")
        
        XCTAssertFalse(ingredients & .Oil != .None, "does not contain oil")
        
        XCTAssertFalse(HoagieIngredients.Onions &  .Tomatoes != .None, "onions contains tomatoes")
        
        XCTAssertTrue(HoagieIngredients.All &  .Tomatoes != .None, "the works contains tomatoes")
        
    }
    
}
