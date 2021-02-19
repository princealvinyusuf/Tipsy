//
//  Tip.swift
//  Tipsy
//
//  Created by Prince Alvin Yusuf on 19/02/21.
//  Copyright © 2021 Prince Alvin Yusuf. All rights reserved.
//

import Foundation

struct TipsBrain {
    
    var calculateMoney: Float?
    var bill: Float?
    var tipPercent: Float?
    var split: Int?
    
    mutating func calculateTips() {
        calculateMoney = ((bill! * tipPercent! ) + bill!) / Float(split!)
    }
    
    func getResult() -> String {
        return String(calculateMoney!)
    }
    
}
