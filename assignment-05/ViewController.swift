//
//  ViewController.swift
//  assignment-05
//
//  Created by Dave Regg on 2/12/23.

import UIKit

class ViewController: UIViewController {
    
    var amount: Int?
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    
    var convertLogic = ConvertLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
    }

    @IBAction func changedInput(_ sender: UITextField) {
        errorLabel.isHidden = true
        convertButton.isUserInteractionEnabled = true
        do {
            var test = try isInt(sender.text!)
            print(test)
        } catch InputError.InvalidValue(let reason) {
            convertButton.isUserInteractionEnabled = false
            errorLabel.isHidden = false
            errorLabel.text = reason
        } catch {
            
        }
    }
    
    
    @IBAction func setEuroSlider(_ sender: UISwitch) {
        convertLogic.setEurSwitch(sender.isOn)
    }
    @IBAction func setGbpSlider(_ sender: UISwitch) {
        convertLogic.setGbpSwitch(sender.isOn)
    }
    @IBAction func setJpySlider(_ sender: UISwitch) {
        convertLogic.setJpySwitch(sender.isOn)
    }
    @IBAction func setInrSlider(_ sender: UISwitch) {
        convertLogic.setInrSwitch(sender.isOn)
    }
    
    
    // Segue
    @IBAction func convertButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toAmountView", sender: self)
        amount = Int(userInput.text!)
        convertLogic.setAmount(amount!)
        
        if (convertLogic.getEurSwitch()) {
            print(convertLogic.convertUsd(type: "eur"))
        }
        if (convertLogic.getGbpSwitch()) {
            print(convertLogic.convertUsd(type: "gbp"))
        }
        if (convertLogic.getJpySwitch()) {
            print(convertLogic.convertUsd(type: "jpy"))
        }
        if (convertLogic.getInrSwitch()) {
            print(convertLogic.convertUsd(type: "inr"))
        }
    }
    
    // Override segue var
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAmountView" {
            let destination = segue.destination as! AmountView
            destination.amount = amount
        }
    }
    
    
    // Error handling
    func isInt(_ str: String) throws -> Bool {
        guard Int(str) != nil else {
            throw InputError.InvalidValue(reason: "Input must be an Integer")
        }
        
        return Int(str) != nil
    }
    
    enum InputError: Error {
        case InvalidValue(reason: String)
    }
}
