//
//  ViewController.swift
//  assignment-05
//
//  Created by Dave Regg on 2/12/23.

import UIKit

class ViewController: UIViewController {
    
    var amount: Int?
    var eurSwitch = true
    var gbpSwitch = true
    var jpySwitch = true
    var inrSwitch = true
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        errorLabel.isHidden = true
    }

    @IBAction func changedInput(_ sender: UITextField) {
        errorLabel.isHidden = true
        do {
            try printInput(sender.text!)
        } catch InputError.InvalidValue(let reason) {
            errorLabel.isHidden = false
            errorLabel.text = reason
        } catch {
            
        }
    }
    
    
    @IBAction func eurSlider(_ sender: UISwitch) {
        print("switched")
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
            inrSwitch = true
        } else {
            inrSwitch = false
        }
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toAmountView", sender: self)
        amount = Int(userInput.text!)
        
        if (eurSwitch) {
            print("convert eur")
        }
        if (gbpSwitch) {
            print("convert gbp")
        }
        if (jpySwitch) {
            print("convert jpy")
        }
        if (inrSwitch) {
            print("convert inr")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAmountView" {
            let destination = segue.destination as! AmountView
            destination.amount = amount
        }
    }
    
    func printInput(_ str: String) throws {
        guard Int(str) != nil else {
            throw InputError.InvalidValue(reason: "Input must be an Integer")
        }
        
        print(str)
    }
    
    enum InputError: Error {
        case InvalidValue(reason: String)
    }
}
