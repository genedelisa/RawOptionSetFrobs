//
//  ViewController.swift
//  RawOptionSetTypeFrobs
//
//  Created by Gene De Lisa on 7/13/15.
//  Copyright © 2015 Gene De Lisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("old hoagie now")
        var hoagie = Hoagie()
        hoagie.regular()
        print(hoagie)
        print(hoagie.hasIngredients())
        hoagie.plain()
        print(hoagie)
        print(hoagie.hasIngredients())
        
        if !hoagie.hasOnions() {
            print("does not have onions")
        }
        hoagie.addOnions()
        if hoagie.hasOnions() {
            print("has onions")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

