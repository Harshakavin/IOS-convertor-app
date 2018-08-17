//
//  TemperatureConvertServices.swift
//  Conveter
//
//  Created by Uditha Kasun on 8/15/18.
//  Copyright © 2018 Harsha Priyankara. All rights reserved.
//

struct TemperatureConvertor {

    func celsiusToFahrenheit(value: Double) -> String {
        let kiloGram: Double = (value * 1.8) + 32.0;
        return String(kiloGram)
    }
    
    func celsiusToKelvin(value: Double) -> String {
        let pounds: Double = value + 273.15;
        return String(pounds)
    }
    
    
    func kelvinToCelsius(value: Double) -> String {
        let celsius: Double = value - 273.15
        return String(celsius)
    }
    func kelvinTofahrenheit(value: Double) -> String {
        let fahrenheit: Double = ((value - 273.15)*1.8) + 32.0
        return String(fahrenheit)
    }
    
    
    func fahrenheitToCelsius(value: Double) -> String {
        let celsius: Double = (value-32.0)/1.8
        return String(celsius)
    }
    func fahrenheitTokelvin(value: Double) -> String {
        let kelvin: Double = ((value-32.0)/1.8)+273.15
        return String(kelvin)
    }
    
}
