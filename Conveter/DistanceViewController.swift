//
//  DistanceViewController.swift
//  Conveter
//
//  Created by Uditha Kasun on 8/13/18.
//  Copyright © 2018 Harsha Priyankara. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

 
    @IBOutlet weak var footTxt: UITextField!
    @IBOutlet weak var mileTxt: UITextField!
    @IBOutlet weak var kilometreTxt: UITextField!
    @IBOutlet weak var yardTxt: UITextField!
    @IBOutlet weak var metreTxt: UITextField!
    
    var distanceConvertor = DistanceConvertor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.footTxt.keyboardType = UIKeyboardType.decimalPad
        self.mileTxt.keyboardType = UIKeyboardType.decimalPad
        self.kilometreTxt.keyboardType = UIKeyboardType.decimalPad
        self.yardTxt.keyboardType = UIKeyboardType.decimalPad
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
            convert(value:metreTxt.text!, type: "Metreto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func metreClearAllTxt(_ sender: Any) {
        convert(value: "0", type: "reset")
    }
    
    @IBAction func footTo(_ sender: Any) {
        if(checkDouble(value:footTxt.text!)){
            // convert
            convert(value:footTxt.text!, type: "Fto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func fClearAllTxt(_ sender: Any) {
        convert(value: "0", type: "reset")
    }
    
    
    @IBAction func yardTo(_ sender: Any) {
        if( checkDouble(value: yardTxt.text!)){
            // convert
            convert(value:yardTxt.text!, type: "Yto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    
    @IBAction func yClearAllTxt(_ sender: Any) {
        convert(value: "0", type: "reset")
    }
    
    
    @IBAction func kilometreTo(_ sender: Any) {
        if( checkDouble(value: kilometreTxt.text!)){
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
        if( checkDouble(value: mileTxt.text!)){
            // convert
            convert(value:mileTxt.text!, type: "Mileto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    
    @IBAction func mileClearAllTxt(_ sender: Any) {
        convert(value: "0", type: "reset")
    }
    
    // check number
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
            
        case ("KMto"):
            footTxt.text = distanceConvertor.kilometreToFoot(value:doubleValue!)
            mileTxt.text = distanceConvertor.kilometreToMile(value:doubleValue!)
            yardTxt.text = distanceConvertor.kilometreToYard(value:doubleValue!)
            metreTxt.text = distanceConvertor.kilometreToMetre(value:doubleValue!)
            
        case ("Metreto"):
            footTxt.text = distanceConvertor.metreToFoot(value:doubleValue!)
            mileTxt.text = distanceConvertor.metreToMile(value:doubleValue!)
            yardTxt.text = distanceConvertor.metreToYard(value:doubleValue!)
            kilometreTxt.text = distanceConvertor.metreToKilometre(value:doubleValue!)
            
        case ("Mileto"):
            footTxt.text = distanceConvertor.mileToFoot(value:doubleValue!)
            metreTxt.text = distanceConvertor.mileToMetre(value:doubleValue!)
            yardTxt.text = distanceConvertor.mileToYard(value:doubleValue!)
            kilometreTxt.text = distanceConvertor.mileToKilometre(value:doubleValue!)
            
        case ("Yto"):
            footTxt.text = distanceConvertor.yardToFoot(value:doubleValue!)
            metreTxt.text = distanceConvertor.yardToMetre(value:doubleValue!)
            mileTxt.text = distanceConvertor.yardToMile(value:doubleValue!)
            kilometreTxt.text = distanceConvertor.yardToKilometre(value:doubleValue!)
            
        case ("Fto"):
            yardTxt.text = distanceConvertor.footToYard(value:doubleValue!)
            metreTxt.text = distanceConvertor.footToMetre(value:doubleValue!)
            mileTxt.text = distanceConvertor.footToMile(value:doubleValue!)
            kilometreTxt.text = distanceConvertor.footToKilometre(value:doubleValue!)
            
        default:
            print("No Action Reset")
            yardTxt.text = ""
            kilometreTxt.text = ""
            footTxt.text = ""
            mileTxt.text = ""
            metreTxt.text = ""
        }
    }
}

