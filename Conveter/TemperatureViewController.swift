//
//  TemperatureViewController.swift
//  Conveter
//
//  Created by Uditha Kasun on 8/15/18.
//  Copyright © 2018 Harsha Priyankara. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet weak var celsiusTxt: UITextField!
    @IBOutlet weak var fahrenheitTxt: UITextField!
    @IBOutlet weak var kelvinTxt: UITextField!
    
    
    var temperatureServices = TemperatureConvertor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.celsiusTxt.keyboardType = UIKeyboardType.decimalPad
        self.fahrenheitTxt.keyboardType = UIKeyboardType.decimalPad
        self.kelvinTxt.keyboardType = UIKeyboardType.decimalPad
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func negativeCelsius(_ sender: Any) {
        celsiusTxt.text = "-" + celsiusTxt.text!
        if(celsiusTxt.text != "-"){
            if(checkDouble(value: celsiusTxt.text!)){
                // convert
                convert(value:celsiusTxt.text!, type: "Cto")
            }else {
                // clear all text
                convert(value: "0", type: "reset")
            }
        }
    }
    
    // celsius to all
    @IBAction func celsiusTo(_ sender: Any) {
        if(checkDouble(value: celsiusTxt.text!)){
            // convert
            convert(value:celsiusTxt.text!, type: "Cto")
        }else {
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func cClearAllTxt(_ sender: Any) {
        // clear all
        convert(value: "0", type: "reset")
    }
    
    // fahrenheit to all
    @IBAction func negativeFahrenheitTo(_ sender: Any) {
        fahrenheitTxt.text = "-" + fahrenheitTxt.text!
        if(fahrenheitTxt.text != "-"){
            if(checkDouble(value: fahrenheitTxt.text!)){
                // convert
                convert(value:fahrenheitTxt.text!, type: "Fto")
            }else {
                // clear all text
                convert(value: "0", type: "reset")
            }
        }
    }
    @IBAction func fahrenheitTo(_ sender: Any) {
        if(checkDouble(value: fahrenheitTxt.text!)){
            // convert
            convert(value:fahrenheitTxt.text!, type: "Fto")
        }else {
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func fClearAllTxt(_ sender: Any) {
        // clear all
        convert(value: "0", type: "reset")
    }
    
    // kelvin to all
    @IBAction func kelvinTo(_ sender: Any) {
        if(checkDouble(value: kelvinTxt.text!)){
            // convert
            convert(value:kelvinTxt.text!, type: "Kto")
            }else {
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func kClearAllTxt(_ sender: Any) {
        // clear all
        convert(value: "0", type: "reset")
    }
    
    // check number
    func checkDouble(value: String) -> Bool {
        
        let num = NumberFormatter().number(from: value)?.doubleValue
        if num != nil {
            return true;
        }else {
            return false;
        }
    }
    
    func convert(value: String,type: String){
        
        let doubleValue = NumberFormatter().number(from: value)?.doubleValue
        switch(type){
            
        case ("Cto"):
            fahrenheitTxt.text = temperatureServices.celsiusToFahrenheit(value:doubleValue!)
            kelvinTxt.text = temperatureServices.celsiusToKelvin(value:doubleValue!)
        case ("Fto"):
            celsiusTxt.text = temperatureServices.fahrenheitToCelsius(value:doubleValue!)
            kelvinTxt.text = temperatureServices.fahrenheitTokelvin(value:doubleValue!)
        case ("Kto"):
            celsiusTxt.text = temperatureServices.kelvinToCelsius(value:doubleValue!)
            fahrenheitTxt.text = temperatureServices.kelvinTofahrenheit(value:doubleValue!)
        default:
            print("No Action Reset")
            fahrenheitTxt.text = ""
            celsiusTxt.text = ""
            kelvinTxt.text = ""
       
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
     if((OunceTxt.text) != ""){
     // convert
     convert(value:OunceTxt.text!, type: "Oto")
     }else{
     // clear all text
     convert(value: "0", type: "reset")
     }
    */

}
