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
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""
    
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
        
    }
    
    @IBAction func calculationTapped(sender: AnyObject) {
        
    }
    
    @IBAction func equalsTapped(sender: AnyObject) {
        
    }
}

