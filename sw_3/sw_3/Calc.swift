//
//  Calc.swift
//  sw_3
//
//  Created by z30 on 15-1-12.
//  Copyright (c) 2015年 z30. All rights reserved.
//

import Foundation


class Calc{
    
    var total: Double
    var taxPct: Double
    var subtotal: Double{
    get {
        return total / (taxPct+1)
        }
    }
    init(total:Double,taxPct: Double){
        self.total=total
        self.taxPct=taxPct
    }
    
    func calcwithpct(tipPct: Double)-> Double{
        return subtotal * tipPct
    }
    
    
    func returnPossibleTips() -> Dictionary<Int, Double> {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            retval[intPct] = calcwithpct(possibleTip)
        } 
        return retval 
    }
  
}

