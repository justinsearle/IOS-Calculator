//
//  ViewController.swift
//  calculator
//
//  Created by student on 2016-02-04.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcDisplay: UILabel!
    var isTyping = false
    var firstNumber:Float? = 0
    var secondNumber:Float? = 0
    var operation:String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func decimalTapped(sender: AnyObject) {
        var number:Float? = Float(calcDisplay.text!)
        
        if (number! - floor(number!) == 0) { // 0.000001 can be changed depending on the level of precision you need
            calcDisplay.text = calcDisplay.text! + "."
        }
    }
    
    @IBAction func numberTapped(sender: AnyObject) {
        var number:String? = sender.currentTitle!
        
        if isTyping {
            calcDisplay.text = calcDisplay.text! + number!
        }
        else {
            calcDisplay.text = number!
            isTyping = true
        }
    }
    
    @IBAction func calculationTapped(sender: AnyObject) {
        isTyping = false
        firstNumber = Float(calcDisplay.text!)
        operation = sender.currentTitle!
    }
    
    @IBAction func equalsTapped(sender: AnyObject) {
        isTyping = false
        var result:Float = 0

        secondNumber = Float(calcDisplay.text!)
        
        if operation == "+" {
            result = firstNumber! + secondNumber!
        }
        else if operation == "-" {
            result = firstNumber! - secondNumber!
        }
        else if operation == "/" {
            result = firstNumber! / secondNumber!
        }
        else if operation == "*" {
            result = firstNumber! * secondNumber!
        }
        
        if result % 1 == 0 {
            calcDisplay.text = String(Int(result))
        }
        else {
            calcDisplay.text = String(result)
        }
        
        
    }
    
    @IBAction func clearTapped(sender: AnyObject) {
        isTyping = false
        firstNumber = 0
        secondNumber = 0
        operation = ""
        calcDisplay.text = "0"
    }
}

