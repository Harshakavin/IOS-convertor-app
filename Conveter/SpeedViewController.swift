//
//  SecondViewController.swift
//  Conveter
//
//  Created by harsha Priyankara on 8/13/18.
//  Copyright © 2018 Harsha Priyankara. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var metreTxt: UITextField!
    @IBOutlet weak var feetTxt: UITextField!
    @IBOutlet weak var kilometreTxt: UITextField!
    @IBOutlet weak var mileTxt: UITextField!
    
    var speedConvertor = SpeedConvertor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.feetTxt.keyboardType = UIKeyboardType.decimalPad
        self.mileTxt.keyboardType = UIKeyboardType.decimalPad
        self.kilometreTxt.keyboardType = UIKeyboardType.decimalPad
        self.metreTxt.keyboardType = UIKeyboardType.decimalPad
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func metreTo(_ sender: Any) {
        if(checkDouble(value: metreTxt.text!)){
            // convert
            convert(value:metreTxt.text!, type: "Mto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    
    @IBAction func mClearAllTxt(_ sender: Any) {
        convert(value: "0", type: "reset")
    }
    
    
    @IBAction func MileClearAllTxt(_ sender: Any) {
        convert(value: "0", type: "reset")
    }
    
    
    @IBAction func feetTo(_ sender: Any) {
        if(checkDouble(value: feetTxt.text!)){
            // convert
            convert(value:feetTxt.text!, type: "Fto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func fClearAllTxt(_ sender: Any) {
        convert(value: "0", type: "reset")
    }
    
    
    @IBAction func kilometreTo(_ sender: Any) {
        if(checkDouble(value: kilometreTxt.text!)){
            // convert
            convert(value:kilometreTxt.text!, type: "KMto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func kClearAllTxt(_ sender: Any) {
        convert(value: "0", type: "reset")
    }
    
    
    @IBAction func mileTo(_ sender: Any) {
        if(checkDouble(value: mileTxt.text!)){
            // convert
            convert(value:mileTxt.text!, type: "Mileto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    
    
    
    
    func checkDouble(value: String) -> Bool {
        let num = Double(value);
        if num != nil {
            return true;
        }else {
            return false;
        }
    }
    
    func convert(value: String,type: String){
        
        let doubleValue = Double(value);
        switch(type){
            
        case ("Mto"):
            feetTxt.text = speedConvertor.mToFeet(value:doubleValue!)
            mileTxt.text = speedConvertor.mToMile(value:doubleValue!)
            kilometreTxt.text = speedConvertor.mTokm(value:doubleValue!)
           
        case ("KMto"):
            feetTxt.text = speedConvertor.kmTofeet(value:doubleValue!)
            mileTxt.text = speedConvertor.kmToMiles(value:doubleValue!)
            metreTxt.text = speedConvertor.kmToMeter(value:doubleValue!)
            
        case ("Mileto"):
            feetTxt.text = speedConvertor.mileToFeet(value:doubleValue!)
            metreTxt.text = speedConvertor.mileToMetre(value:doubleValue!)
            kilometreTxt.text = speedConvertor.mileTokm(value:doubleValue!)
            
        case ("Fto"):
            metreTxt.text = speedConvertor.feetToMeter(value:doubleValue!)
            mileTxt.text = speedConvertor.feetToMile(value:doubleValue!)
            kilometreTxt.text = speedConvertor.feetToKm(value:doubleValue!)
      
        default:
            print("No Action Reset")
            kilometreTxt.text = ""
            feetTxt.text = ""
            mileTxt.text = ""
            metreTxt.text = ""
        }
    }

}

