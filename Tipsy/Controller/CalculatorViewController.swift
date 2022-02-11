//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    var calculate = Calculate()
    var porcentaje: Float = 0.0
    
    
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPcButton: UIButton!
    
    @IBOutlet weak var tenPcbutton: UIButton!
    @IBOutlet weak var twentyPcButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPcButton.isSelected = false
        tenPcbutton.isSelected = false
        twentyPcButton.isSelected = false
        
        sender.isSelected = true
        billTextField.endEditing(true)
        if sender.titleLabel?.text! == "0%"{
            porcentaje = 0.0
        }else if sender.titleLabel?.text! == "10%" {
            porcentaje = 0.1
            
        }else {
            porcentaje = 0.2
        }
        

    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        sender.stepValue = 1
        self.splitNumberLabel.text = Int(sender.value).description
        
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill2 = (billTextField.text! as NSString).floatValue
        var split2 = (splitNumberLabel.text as! NSString).floatValue
        
        
        
        calculate.calculateSplit(bill: bill2, percen: porcentaje, splitt: split2)
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }


}

