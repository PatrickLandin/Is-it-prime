//
//  ViewController.swift
//  Is it Prime?
//
//  Created by Patrick Landin on 12/1/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(sender: AnyObject) {
        
        var isPrime = true
        var integer = number.text.toInt()
        
        if ((number) != nil) {
            
            if (integer < 1) {
                
                message.text = "Please enter a positive integer."
                
            } else {
                
                if (integer == 1) {
                    
                    message.text = "1 is not prime!"
                    
                } else {
                    
                    for var i = 2; i < integer!; ++i {
                        
                        if (integer! % i==0) {
                            
                            // number aint prime
                            
                            isPrime = false
                            
                        }
                    }
                    
                    if (isPrime == true) {
                        
                        message.text = "This number is prime! Yay!"
                        
                    } else {
                        
                        message.text = "This number ain't prime"
                    }
                    
                    
                }
                
            }
            
            
        } else {
            
            message.text = "Please enter a number"
            
        }
        
        println(number.text)
    }
    
    
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var message: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

