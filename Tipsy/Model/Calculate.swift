//
//  Calculate.swift
//  Tipsy
//
//  Created by Nicolas Dolinkue on 11/02/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
import UIKit
struct Calculate {
    
    var totalBill: Float = 0.00
    
    mutating func calculateSplit (bill: Float, percen: Float, splitt: Float){
        let calculateValue = (bill * (1+percen))/splitt
        
        print(calculateValue)
        totalBill = calculateValue
        
    }
    
    func getValue() -> String {
        
        let billSplit = String(format: "%.2f", totalBill ?? 0.0)
        return billSplit

        
    }
    
    
}

