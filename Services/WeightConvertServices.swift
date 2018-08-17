//
//  WeightConvertServices.swift
//  Conveter
//
//  Created by Harsha Priyankara on 8/14/18.
//  Copyright © 2018 Harsha Priyankara. All rights reserved.
//
struct weightConverter {
    
    func gramToKilogram(value: Double) -> String {
        let kiloGram: Double = value/1000
        return String(kiloGram)
    }
    
    func gramToPound(value: Double) -> String {
        let pounds: Double = value * 0.002204623;
        return String(pounds)
    }
    
    func gramToOunce(value: Double) -> String {
        let ounce: Double = value * 0.03527396;
        return String(ounce)
    }
    
    
    func kilogramToGram(value: Double) -> String {
        let gram: Double = value * 1000
        return String(gram)
    }
    func kilogramToPound(value: Double) -> String {
        let pound: Double = value * 2.204623
        return String(pound)
    }
    func kilogramToOunce(value: Double) -> String {
        let ounce: Double = value * 35.27396
        return String(ounce)
    }
    
    
    func poundToGram(value: Double) -> String {
        let gram: Double = value * 453.5924
        return String(gram)
    }
    func PoundToKilogram(value: Double) -> String {
        let kilo: Double = value * 0.4535924
        return String(kilo)
    }
    func PoundToOunce(value: Double) -> String {
        let ounce: Double = value * 16
        return String(ounce)
    }
    

    func ounceToGram(value: Double) -> String {
        let gram: Double = value * 28.34952
        return String(gram)
    }
    func ounceToKilogram(value: Double) -> String {
        let kilo: Double = value * 0.02834952
        return String(kilo)
    }
    func ounceToPound(value: Double) -> String {
        let pound: Double = value * 0.0625
        return String(pound)
    }
}
