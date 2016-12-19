//
//  ViewController.swift
//  TipCalculatorCodePath
//
//  Created by Ahmed Abdelrahman on 12/18/16.
//  Copyright © 2016 Ahmed Abdelrahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subtotalLabel: UITextField!
    @IBOutlet weak var percentSegmentedControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.barTintColor = UIColor(red: 21/255, green: 96/255, blue: 254/255, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes  = [NSForegroundColorAttributeName: UIColor.white]
        UIApplication.shared.statusBarStyle = .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let subtotal = Double(subtotalLabel.text!) ?? 0
        let percentages = [0.1, 0.15, 0.20]
        let tip = subtotal * percentages[percentSegmentedControl.selectedSegmentIndex]
        let total = subtotal + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

