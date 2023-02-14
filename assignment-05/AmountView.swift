//
//  AmountView.swift
//  assignment-05
//
//  Created by Dave Regg on 2/12/23.
//

import UIKit

class AmountView: UIViewController {

    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var inrLabel: UILabel!
    
    @IBOutlet weak var euroStack: UIStackView!
    @IBOutlet weak var gbpStack: UIStackView!
    @IBOutlet weak var jpyStack: UIStackView!
    @IBOutlet weak var inrStack: UIStackView!
    
    var convertLogic = ConvertLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        euroStack.isHidden = true
        gbpStack.isHidden = true
        jpyStack.isHidden = true
        inrStack.isHidden = true
        
        // Do any additional setup after loading the view.
        print(convertLogic.amount)
        amountLabel.text = "$" + String(convertLogic.amount) + ".00"
        if (convertLogic.getEurSwitch()) {
            let amt = convertLogic.convertUsd(type: "eur")
            eurLabel.text = "€\(amt)"
            euroStack.isHidden = false
        }
        if (convertLogic.getGbpSwitch()) {
            let amt = convertLogic.convertUsd(type: "gbp")
            gbpLabel.text = "£\(amt)"
            gbpStack.isHidden = false
        }
        if (convertLogic.getJpySwitch()) {
            let amt = convertLogic.convertUsd(type: "jpy")
            jpyLabel.text = "¥\(amt)"
            jpyStack.isHidden = false
        }
        if (convertLogic.getInrSwitch()) {
            let amt = convertLogic.convertUsd(type: "inr")
            inrLabel.text = "₹\(amt)"
            inrStack.isHidden = false
        }
    }
}
