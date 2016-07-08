//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController {
    
    func addNameToDeliLine(name: String) -> String {
        var line: String = ""
        
        if (name == "Meg Ryan" || name == "Billy Crystal") {
            deliLine.insert(name, atIndex: 0)
        } else {
            deliLine.append(name)
        }
        
        if (deliLine.indexOf(name) == 0) {
            if (name == "Meg Ryan")  {
                line = "Welcome Meg! You can sit wherever you like."
                
            } else if (name == "Billy Crystal") {
                line = "Welcome Billy! You can sit wherever you like."
                
            } else {
                line = "Welcome \(name), you're first in line!"
            }
        } else {
            let index = deliLine.indexOf(name)
            line = "Welcome \(name), you're number \(index! + 1) in line."
        }
        
        return line
    }
    
    func nowServing() -> String {
        if (deliLine.count == 0) {
            return "There is no-one to be served."
        }
        
        let next = deliLine.first
        deliLine.removeFirst()
        
        return "Now serving \(next)!"
    }
    
    func deliLineDescription() -> String {
        if (deliLine.count == 0) {
            return "There is no-one to be served."
        }
        
        var line: String = "The line is:\n"
        for (index, person) in deliLine.enumerate() {
            line = line.stringByAppendingString("\(index + 1). \(person)\n")
        }
        
        return line
    }
    
}

