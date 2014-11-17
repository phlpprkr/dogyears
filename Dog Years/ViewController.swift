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
    @IBOutlet weak var convertButton: UIButton!
    

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
        dogYearsLabel.textColor = UIColor.grayColor()
        
        convertButton.titleLabel?.textColor = UIColor.grayColor()
        
    }

    @IBAction func converToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(realDogYears)" + " real human years"
    }
    
    
}

