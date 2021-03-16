//
//  Operator.swift
//  Calculator
//
//  Created by Elīna Zekunde on 16/03/2021.
//

import Foundation

class Operator {
    
    var op: (Double, Double) -> Double
    var isDivision = false
    
    init(_ string: String) {
        
        if string == "+" {
            self.op = (+)
        } else if string == "-" {
            self.op = (-)
        } else if string == String("\u{00d7}") {
            self.op = (*)
        } else {
            self.op = (/)
            self.isDivision = true
        }
    }
}
