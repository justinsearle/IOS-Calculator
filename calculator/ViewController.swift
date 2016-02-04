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
    var firstNumber:Int? = 0
    var secondNumber:Int? = 0
    var operation:String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //test
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
        firstNumber = Int(calcDisplay.text!)
        operation = sender.currentTitle!
    }
    
    @IBAction func equalsTapped(sender: AnyObject) {
        isTyping = false
        var result = 0
        secondNumber = Int(calcDisplay.text!)
        
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
    
        calcDisplay.text = String(result)
    }
    
    @IBAction func clearTapped(sender: AnyObject) {
    }
}

