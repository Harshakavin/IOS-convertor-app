//
//  SpeedConvertServices.swift
//  Conveter
//
//  Created by Muthumini Devendra on 8/16/18.
//  Copyright © 2018 Harsha Priyankara. All rights reserved.
//

struct SpeedConvertor {
    
    func feetToMeter(value: Double) -> String {
        let convertedValue = value * 0.00508
        return String(convertedValue)
    }
    func feetToKm(value: Double) -> String {
        let convertedValue = value * 0.018288
        return String(convertedValue)
    }
    func feetToMile(value: Double) -> String {
        let convertedValue = value*0.0113636
        return String(convertedValue)
    }
    
    
    func kmToMeter(value: Double) -> String {
        let convertedValue = value*0.2777
        return String(convertedValue)
    }
    func kmTofeet(value: Double) -> String {
        let convertedValue = value*54.6807
        return String(convertedValue)
    }
    func kmToMiles(value: Double) -> String {
        let convertedValue = value * 0.621371
        return String(convertedValue)
    }
    
    
    
    func mileToFeet(value: Double) -> String {
        let convertedValue = value * 88
        return String(convertedValue)
    }
    func mileTokm(value: Double) -> String {
        let convertedValue = value*1.609344
        return String(convertedValue)
    }
    func mileToMetre(value: Double) -> String {
        let convertedValue = value * 0.44704
        return String(convertedValue)
    }
    
    
    
    func mToFeet(value: Double) -> String {
        let convertedValue = value * 196.85
        return String(convertedValue)
    }
    func mTokm(value: Double) -> String {
        let convertedValue = value * 3.6
        return String(convertedValue)
    }
    func mToMile(value: Double) -> String {
        let convertedValue = value * 2.2369
        return String(convertedValue)
    }
}
