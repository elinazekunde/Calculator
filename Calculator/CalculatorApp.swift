//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Elīna Zekunde on 16/03/2021.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorHome()
                .environmentObject(Calculator())
        }
    }
}
