//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Prince Alvin Yusuf on 19/02/21.
//  Copyright © 2021 Prince Alvin Yusuf. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var information: UILabel!
    var result: String?
    var split: Int?
    var tipPercentage: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = result
        let convertTipPercentage = tipPercentage! * 100
        information.text = "Split between \(split ?? 0) People, with \(String(format: "%.0f", convertTipPercentage))% tip."
        
    }
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
