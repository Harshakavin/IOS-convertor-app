//
//  WeightViewController.swift
//  Conveter
//
//  Created by Uditha Kasun on 8/14/18.
//  Copyright © 2018 Harsha Priyankara. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {


    @IBOutlet weak var gramTxt: UITextField!
    @IBOutlet weak var poundTxt: UITextField!
    @IBOutlet weak var OunceTxt: UITextField!
    @IBOutlet weak var kilogramTxt: UITextField!
    
    var weightConvertSerives = weightConverter();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gramTxt.keyboardType = UIKeyboardType.decimalPad;
        self.kilogramTxt.keyboardType = UIKeyboardType.decimalPad;
        self.OunceTxt.keyboardType = UIKeyboardType.decimalPad;
        self.poundTxt.keyboardType = UIKeyboardType.decimalPad;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // gram to all
    @IBAction func gramTo(_ sender: Any) {
        print(checkDouble(value: gramTxt.text!))
        if(checkDouble(value: gramTxt.text!)) {
             convert(value:gramTxt.text!, type: "Gto")
        }else{
             convert(value: "0", type: "reset")
        }
    }
    // clear all text
    @IBAction func gClearAllTxt(_ sender: Any) {
        // clear all text
        convert(value: "0", type: "reset")
    }
    
   // kilogram to all
    @IBAction func kilogramTo(_ sender: Any) {
        print((kilogramTxt.text) == "")
        if((kilogramTxt.text) != ""){
            // convert
            convert(value:kilogramTxt.text!, type: "KGto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func kClearAllTxt(_ sender: Any) {
        // clear all text
        convert(value: "0", type: "reset")
    }
    
    // pound to all
    @IBAction func poundTo(_ sender: Any) {
        print((poundTxt.text) == "")
        if((poundTxt.text) != ""){
            // convert
            convert(value:poundTxt.text!, type: "Pto")
        }else{
            // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func pClearAllTxt(_ sender: Any) {
         // clear all text
        convert(value: "0", type: "reset")
    }
    
    // ounce to all
    @IBAction func ounceTo(_ sender: Any) {
        if((OunceTxt.text) != ""){
            // convert
            convert(value:OunceTxt.text!, type: "Oto")
        }else{
             // clear all text
            convert(value: "0", type: "reset")
        }
    }
    @IBAction func oClearAllTxt(_ sender: Any) {
         // clear all text
        convert(value: "0", type: "reset")
    }
    // check numbers
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
        
        case ("KGto"):
            gramTxt.text = weightConvertSerives.kilogramToGram(value:doubleValue!)
            poundTxt.text = weightConvertSerives.kilogramToPound(value:doubleValue!)
            OunceTxt.text = weightConvertSerives.kilogramToOunce(value:doubleValue!)
        case ("Gto"):
            kilogramTxt.text = weightConvertSerives.gramToKilogram(value:doubleValue!)
            poundTxt.text = weightConvertSerives.gramToPound(value:doubleValue!)
            OunceTxt.text = weightConvertSerives.gramToOunce(value:doubleValue!)
        case ("Pto"):
            gramTxt.text = weightConvertSerives.poundToGram(value:doubleValue!)
            kilogramTxt.text = weightConvertSerives.PoundToKilogram(value:doubleValue!)
            OunceTxt.text = weightConvertSerives.PoundToOunce(value:doubleValue!)
        case ("Oto"):
            poundTxt.text = weightConvertSerives.ounceToPound(value:doubleValue!)
            kilogramTxt.text = weightConvertSerives.ounceToKilogram(value:doubleValue!)
            gramTxt.text = weightConvertSerives.ounceToGram(value:doubleValue!)
        default:
            print("No Action Reset")
            poundTxt.text = ""
            kilogramTxt.text = ""
            gramTxt.text = ""
            OunceTxt.text = ""
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
