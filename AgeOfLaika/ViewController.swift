//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Julio Gonzales on 2/10/15.
//  Copyright (c) 2015 Julio Gonzales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDogName: UITextField!

    @IBOutlet weak var txtDogYearsInHumanYears: UITextField!
    
    @IBOutlet weak var lblAsterixValidationDogYears: UILabel!
    
    @IBOutlet weak var lblValidationDogYearsEmpty: UILabel!
    
    @IBOutlet weak var lblDogYearsConverted: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func convertToDogYears(sender: UIButton) {
        
        lblDogYearsConverted.hidden=true
        lblAsterixValidationDogYears.hidden=true
        lblValidationDogYearsEmpty.hidden=true
        
        if txtDogYearsInHumanYears.text=="" {
            lblAsterixValidationDogYears.hidden=false
            lblValidationDogYearsEmpty.hidden=false
        } else {
            let dogYearsInHumanYears = txtDogYearsInHumanYears.text.toInt()!*7
            if txtDogName.text == ""{
                let convertedDogText="Your dog is \(dogYearsInHumanYears) years."
                lblDogYearsConverted.text=convertedDogText
            }else {
                let convertedDogText=txtDogName.text + " is \(dogYearsInHumanYears) years."
                lblDogYearsConverted.text=convertedDogText
            }
            lblDogYearsConverted.sizeToFit()
            lblDogYearsConverted.hidden=false
        }
        
        txtDogYearsInHumanYears.resignFirstResponder()
        txtDogName.resignFirstResponder()
        
    }


}

