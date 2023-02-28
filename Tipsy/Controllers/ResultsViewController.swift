//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Atdhe Boshnjaku on 2/27/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var billTotal: Double?
    var tip: Double?
    var tipTitle: String?
    var split: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        totalLabel.text = String(format: "%.2f", billTotal ?? 0.00)
        settingsLabel.text = "Split between \(split ?? 2) people, with \(tipTitle ?? "") tip."
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
