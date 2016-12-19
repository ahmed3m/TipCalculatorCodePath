//
//  ViewController.swift
//  TipCalculatorCodePath
//
//  Created by Ahmed Abdelrahman on 12/18/16.
//  Copyright © 2016 Ahmed Abdelrahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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


}

