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
    
    var convertLogic = ConvertLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(convertLogic.amount)
        amountLabel.text = "$" + String(convertLogic.amount) + ".00"
        if (convertLogic.getEurSwitch()) {
            let amt = convertLogic.convertUsd(type: "eur")
            eurLabel.text = "€\(amt)"
        }
        if (convertLogic.getGbpSwitch()) {
            let amt = convertLogic.convertUsd(type: "gbp")
            gbpLabel.text = "£\(amt)"
        }
        if (convertLogic.getJpySwitch()) {
            let amt = convertLogic.convertUsd(type: "jpy")
            jpyLabel.text = "¥\(amt)"
        }
        if (convertLogic.getInrSwitch()) {
            let amt = convertLogic.convertUsd(type: "inr")
            inrLabel.text = "₹\(amt)"
        }
    }
}
