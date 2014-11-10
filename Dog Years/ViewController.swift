//
//  ViewController.swift
//  Dog Years
//
//  Created by Philip Parker on 11/7/14.
//  Copyright (c) 2014 Philip Parker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: AnyObject) {
        let stringFromTextField = enterHumanYearsTextField.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        
        
        
        dogYearsLabel.text = "\(intFromOptional * 7)" + " dog years"
        dogYearsLabel.textColor = UIColor.greenColor()
        
    }

}

