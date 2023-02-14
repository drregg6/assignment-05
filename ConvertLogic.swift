//
//  ConvertLogic.swift
//  assignment-05
//
//  Created by Dave Regg on 2/14/23.
//

import Foundation

struct ConvertLogic {
    var eurSwitch = true
    var gbpSwitch = true
    var jpySwitch = true
    var inrSwitch = true
    var amount = 0
    
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
    
    // Float(String(format: "%.1f", interest))!
//    func convertUsdToEur() -> Float {
//        let converted = Float(amount) * 1.07377
//        return Float(String(format: "%.1f", converted))!
//    }
//
//    func convertUsdToGbp() -> Float {
//        let converted = Float(amount) * 1.21737
//        return Float(String(format: "%.1f", converted))!
//    }
//
//    func convertUsdToJpy() -> Float {
//        let converted = Float(amount) * 0.00751556
//        return Float(String(format: "%.1f", converted))!
//    }
//
//    func convertUsdToInr() -> Float {
//        let converted = Float(amount) * 0.0120643
//        return Float(String(format: "%.1f", converted))!
//    }
    
    // Better code
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
