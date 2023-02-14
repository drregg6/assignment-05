//
//  ConvertLogic.swift
//  assignment-05
//
//  Created by Dave Regg on 2/14/23.
//

import Foundation

struct ConvertLogic {
    var eurSwitch: Bool = true
    var gbpSwitch: Bool = true
    var jpySwitch: Bool = true
    var inrSwitch: Bool = true
    var amount: Int = 0
    var eurAmount: Float = 0.00
    var gbpAmount: Float = 0.00
    var jpyAmount: Float = 0.00
    var inrAmount: Float = 0.00
    
    func getEurSwitch() -> Bool {
        return eurSwitch
    }
    func getGbpSwitch() -> Bool {
        return gbpSwitch
    }
    func getJpySwitch() -> Bool {
        return jpySwitch
    }
    func getInrSwitch() -> Bool {
        return inrSwitch
    }
    func getAmount() -> Int {
        return amount
    }
    
    mutating func setEurSwitch(_ isOn: Bool) {
        if (isOn) {
            eurSwitch = true
        } else {
            eurSwitch = false
        }
    }
    
    mutating func setGbpSwitch(_ isOn: Bool) {
        if (isOn) {
            gbpSwitch = true
        } else {
            gbpSwitch = false
        }
    }
    
    mutating func setJpySwitch(_ isOn: Bool) {
        if (isOn) {
            jpySwitch = true
        } else {
            jpySwitch = false
        }
    }
    
    mutating func setInrSwitch(_ isOn: Bool) {
        if (isOn) {
            inrSwitch = true
        } else {
            inrSwitch = false
        }
    }
    
    mutating func setAmount(_ int: Int) {
        amount = int
    }
    
    func convertUsd(type: String = "eur") -> Float {
        var constant: Float = 0.0
        switch type.lowercased() {
        case "eur":
            constant = 0.931354
        case "gbp":
            constant = 0.821325
        case "jpy":
            constant = 133.081
        case "inr":
            constant = 82.8937
        default:
            constant = 0.931354
        }
        
        let converted = Float(amount) * constant
        return Float(String(format: "%.2f", converted))!
    }
}
