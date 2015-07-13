//
//  Hoagie.swift
//  RawOptionSetTypeFrobs
//
//  Created by Gene De Lisa on 7/13/15.
//  Copyright (c) 2015 Gene De Lisa. All rights reserved.
//

import Foundation


struct Hoagie {
    
    var name = "Hoagie"
    
    var ingredients:HoagieIngredients
    
    init() {
        
        ingredients = .Lettuce | .Tomatoes
        
        if hasLettuce() {
            print("has lettuce")
        }
        
    }
    
    mutating func addOnions() {
        ingredients |= .Onions
    }
    
    mutating func regular() {
        ingredients |= .All
    }
    
    mutating func plain() {
        ingredients = .None
    }
    
    func hasLettuce() -> Bool {
        return ingredients & HoagieIngredients.Lettuce != .None
    }
    
    func hasOnions() -> Bool {
        return ingredients & .Onions != .None
    }
    
    func hasIngredients() -> Bool {
        return ingredients != .None
    }
}



struct HoagieIngredients : RawOptionSetType {
    private var value: UInt = 0
    init(_ value: UInt) { self.value = value }
    init(rawValue value: UInt) { self.value = value }
    init(nilLiteral: ()) { self.value = 0 }
    static var allZeros: HoagieIngredients { return self.init(0) }
    var rawValue: UInt { return self.value }
    
    static var None: HoagieIngredients { return self.init(0) }
    static var Lettuce: HoagieIngredients { return self.init(1 << 0) }
    static var Tomatoes: HoagieIngredients { return self.init(1 << 1) }
    static var Onions: HoagieIngredients { return self.init(1 << 2) }
    static var Oil: HoagieIngredients { return self.init(1 << 3) }
    static var Vinegar: HoagieIngredients { return self.init(1 << 4) }
    static var Peppers: HoagieIngredients { return self.init(1 << 5) }
    static var Pickles: HoagieIngredients { return self.init(1 << 6) }
    static var Salt: HoagieIngredients { return self.init(1 << 7) }
    static var Pepper: HoagieIngredients { return self.init(1 << 8) }
    static var Oregano: HoagieIngredients { return self.init(1 << 9) }
    static var All: HoagieIngredients { return self.init(~0) }
    
}