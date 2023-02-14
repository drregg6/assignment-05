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
    var amount: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
