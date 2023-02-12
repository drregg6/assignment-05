//
//  ViewController.swift
//  assignment-05
//
//  Created by Dave Regg on 2/12/23.
//
//  To force int vals
//  https://stackoverflow.com/questions/26919854/how-can-i-declare-that-a-text-field-can-only-contain-an-integer

import UIKit

class ViewController: UIViewController {
    
    var amount = 0
    var eurSwitch = true
    var gbpSwitch = true
    var jpySwitch = true
    var intSwitch = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func userInput(_ sender: UITextField) {
    }
    
    
    @IBAction func eurSlider(_ sender: UISwitch) {
        if sender.isOn {
            eurSwitch = true
        } else {
            eurSwitch = false
        }
    }
    
    
    @IBAction func gbpSlider(_ sender: UISwitch) {
        if sender.isOn {
            gbpSwitch = true
        } else {
            gbpSwitch = false
        }
    }
    
    
    @IBAction func jpySlider(_ sender: UISwitch) {
        if sender.isOn {
            jpySwitch = true
        } else {
            jpySwitch = false
        }
    }
    
    
    @IBAction func inrSlider(_ sender: UISwitch) {
        if sender.isOn {
            intSwitch = true
        } else {
            intSwitch = false
        }
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toAmountView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAmountView" {
            let destination = segue.destination as! AmountView
            destination.amount = amount
        }
    }
}
