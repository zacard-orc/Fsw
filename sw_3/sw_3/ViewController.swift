//
//  ViewController.swift
//  sw_3
//
//  Created by z30 on 15-1-10.
//  Copyright (c) 2015年 z30. All rights reserved.
//

import UIKit

class ViewController: UIKit.UIViewController {
    
    let tipCalc=Calc(total:33.25,taxPct:0.06)
    
    
    @IBOutlet var totalTextField: UITextField
    @IBOutlet var taxPctSlider: UISlider
    @IBOutlet var taxPctLabel: UILabel
    @IBOutlet var resultsTextView: UITextView
    
    @IBAction func calculateTapped(sender:AnyObject){
        tipCalc.total = Double(totalTextField.text.bridgeToObjectiveC().doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        println(possibleTips)
        var keys=Array(possibleTips)
        //println(keys)
        //sort(keys,>)
        var results = ""
        for tipPct in keys {
            println(tipPct.1)
            //let tipValue=possibleTips[tipPct]!
            let prettyTipValue=String(format:"%.2f",tipPct.1)
            results += "\(tipPct.0)%:\(prettyTipValue)\n"
        }
        /*
        for (tipPct,tipValue) in possibleTips{
            results += "\(tipPct)%:\(tipValue)\n"
        }
        */
        resultsTextView.text=results;
    }
    
    @IBAction func taxPercentageChanged(sender:AnyObject){
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    
    @IBAction func viewTapped(sender:AnyObject){
        totalTextField.resignFirstResponder()
    }
    
    func refreshUI(){
        totalTextField.text=String(tipCalc.total)
        taxPctSlider.value=Float(tipCalc.taxPct)*100.0
        taxPctLabel.text = "Tax Percentage \(Int(taxPctSlider.value))%"
        resultsTextView.text=""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

