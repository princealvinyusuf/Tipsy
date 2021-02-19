//
//  ViewController.swift
//  Tipsy
//
//  Created by Prince Alvin Yusuf on 09/09/2021.
//  Copyright © 2021 Prince Alvin Yusuf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var zeroTip: UIButton!
    @IBOutlet weak var tenTip: UIButton!
    @IBOutlet weak var twentyTip: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    
    var tipsBrain = TipsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        if sender.value == 1.0 {
            splitLabel.text = String(format: "%.0f", sender.value)
            tipsBrain.split = Int(splitLabel.text!)
        } else {
            splitLabel.text = String(format: "%.0f", sender.value)
            tipsBrain.split = Int(splitLabel.text!)
        }
    }
    
    
    @IBAction func tipPressed(_ sender: UIButton) {
        if sender.currentTitle == "0%" {
            zeroTip.isSelected = true
            tenTip.isSelected = false
            twentyTip.isSelected = false
            tipsBrain.tipPercent = 0.0
        } else if sender.currentTitle == "10%" {
            zeroTip.isSelected = false
            tenTip.isSelected = true
            twentyTip.isSelected = false
            tipsBrain.tipPercent = 0.1
        } else {
            zeroTip.isSelected = false
            tenTip.isSelected = false
            twentyTip.isSelected = true
            tipsBrain.tipPercent = 0.2
        }
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billValue = Float(billTextField.text!) ?? 0.0
        tipsBrain.bill = billValue
    
        tipsBrain.calculateTips()
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = String(format: "%.2f", tipsBrain.calculateMoney ?? "0.0")
            destinationVC.split = tipsBrain.split
            destinationVC.tipPercentage = tipsBrain.tipPercent ?? 0.0
        }
    }
    
    
    
    
    


}
