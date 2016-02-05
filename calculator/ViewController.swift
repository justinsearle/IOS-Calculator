//
//  ViewController.swift
//  calculator
//
//  Created by Justin on 2016-02-04.
//  Copyright © 2016 Justin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //local variables
    @IBOutlet weak var calcDisplay: UILabel!
    var isTyping = false //check to see if user is typing a number
    var firstNumber:Float? = 0
    var secondNumber:Float? = 0
    var operation:String? = "" //store current operation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    //add decimal points
    @IBAction func decimalTapped(sender: AnyObject) {
        var number:Float? = Float(calcDisplay.text!)
        
        //if float value - int value == 0 then number is not a decimal number
        if (number! - floor(number!) == 0) {
            calcDisplay.text = calcDisplay.text! + "." //add decimal
        }
    }
    
    //add number to display
    @IBAction func numberTapped(sender: AnyObject) {
        var number:String? = sender.currentTitle!
        
        //operation has not been pressed
        if isTyping {
            calcDisplay.text = calcDisplay.text! + number!
        }
        else {
            calcDisplay.text = number!
            isTyping = true
        }
    }
    
    //get operation for calculation
    @IBAction func calculationTapped(sender: AnyObject) {
        isTyping = false
        firstNumber = Float(calcDisplay.text!)
        operation = sender.currentTitle!
    }
    
    //perform operation
    @IBAction func equalsTapped(sender: AnyObject) {
        isTyping = false
        var result:Float = 0

        secondNumber = Float(calcDisplay.text!) //get float value of current display label
        
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
        
        //if result is whole number, convert to int to truncate .0 from end of result
        if result % 1 == 0 {
            calcDisplay.text = String(Int(result))
        }
        else {
            calcDisplay.text = String(result)
        }
    }
    
    //reset calculator
    @IBAction func clearTapped(sender: AnyObject) {
        isTyping = false
        firstNumber = 0
        secondNumber = 0
        operation = ""
        calcDisplay.text = "0"
    }
}

