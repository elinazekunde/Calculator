//
//  Calculator.swift
//  Calculator
//
//  Created by Elīna Zekunde on 16/03/2021.
//

import Foundation

class Calculator: ObservableObject {
    
    // Used to update the UI
    @Published var displayValue = "0"
    
    // Store the current operator
    var currentOperator: Operator?
    
    // Current number selected
    var currentNumber: Double? = 0
    
    // Previous number selected
    var previousNumber: Double?
    
    // Flag for = press
    var equaled = false
    
    // How many decimal places have been typed
    var decimalPlace = 0
    
    /// Selects the appropriate function based on the label of the button pressed
    func buttonPressed(label: String) {
        
        if label == "CE" {
            displayValue = "0"
            reset()
        } else if label == "=" {
            equalsClicked()
        } else if label == "." {
            decimalClicked()
        } else if let value = Double(label) {
            numberPressed(value: value)
        } else {
            operatorPressed(op: Operator())
        }
    }
    
    func reset() {
        
        currentOperator = nil
        currentNumber = 0
        previousNumber = nil
        equaled = false
        decimalPlace = 0
    }
    
    func equalsClicked() {
        
    }
    
    func decimalClicked() {
        
    }
    
    func numberPressed(value: Double) {
        
    }
    
    func operatorPressed(op: Operator) {
        
    }
}
