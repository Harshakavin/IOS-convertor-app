//
//  DistanceConvertServices.swift
//  Conveter
//
//  Created by Harsha Priyankara on 8/16/18.
//  Copyright © 2018 Harsha Priyankara. All rights reserved.
//

struct DistanceConvertor {

    
    func metreToKilometre(value: Double) -> String {
        let kiloMetre: Double = value / 1000.0;
        return String(kiloMetre)
    }
    func metreToFoot(value: Double) -> String {
        let foot: Double = value * 3.28084;
        return String(foot)
    }
    func metreToYard(value: Double) -> String {
        let yard: Double = value * 1.09361
        return String(yard)
    }
    func metreToMile(value: Double) -> String {
        let mile: Double = value * 0.000621371
        return String(mile)
    }
    
    
    func kilometreToMetre(value: Double) -> String {
        let metre: Double = value * 1000.0;
        return String(metre)
    }
    func kilometreToFoot(value: Double) -> String {
        let foot: Double = value * 3280.84;
        return String(foot)
    }
    func kilometreToYard(value: Double) -> String {
        let yard: Double = value * 1093.613298
        return String(yard)
    }
    func kilometreToMile(value: Double) -> String {
        let mile: Double = value * 0.621371
        return String(mile)
    }
   
    
    func footToMetre(value: Double) -> String {
        let metre: Double = value * 1000.0;
        return String(metre)
    }
    func footToKilometre(value: Double) -> String {
        let foot: Double = value * 3280.84;
        return String(foot)
    }
    func footToYard(value: Double) -> String {
        let yard: Double = value * 1093.613298
        return String(yard)
    }
    func footToMile(value: Double) -> String {
        let mile: Double = value * 0.621371
        return String(mile)
    }
    
   
    
    func mileToMetre(value: Double) -> String {
        let metre: Double = value * 1609.344
        return String(metre)
    }
    func mileToKilometre(value: Double) -> String {
        let foot: Double = value * 1.609344
        return String(foot)
    }
    func mileToYard(value: Double) -> String {
        let yard: Double = value * 1760.0
        return String(yard)
    }
    func mileToFoot(value: Double) -> String {
        let mile: Double = value * 5280.0
        return String(mile)
    }
    
    
    func yardToMetre(value: Double) -> String {
        let metre: Double = value * 0.9144
        return String(metre)
    }
    func yardToKilometre(value: Double) -> String {
        let kilometre: Double = value * 0.0009144
        return String(kilometre)
    }
    func yardToFoot(value: Double) -> String {
        let foot: Double = value * 3.0
        return String(foot)
    }
    func yardToMile(value: Double) -> String {
        let mile: Double = value * 0.000568
        return String(mile)
    }
    
  
    
}
