//
//  ViewController.swift
//  test927
//
//  Created by lishuxin on 2018/9/27.
//  Copyright © 2018年 lishuxin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var caculaterOperator = 0
    var temp:Double = 0
    
    var calFlag:Int = 0
    @IBOutlet var caculaterDisplay: UITextField!
    
    
    @IBAction func button1(_ sender: Any) {
        if calFlag == 1{
        caculaterDisplay.text = caculaterDisplay.text! + "1"    }
        else{
            caculaterDisplay.text = "1"        }
        calFlag = 1
    }
    
    @IBAction func button2(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + "2"
        calFlag = 1    }
    
    @IBAction func button3(_ sender: Any) {
        
        caculaterDisplay.text = caculaterDisplay.text! + "3"
        calFlag = 1    }
    
    @IBAction func button4(_ sender: Any) {
        
        
        caculaterDisplay.text = caculaterDisplay.text! + "4"
        calFlag = 1    }
    
    @IBAction func button5(_ sender: Any) {
        
        caculaterDisplay.text = caculaterDisplay.text! + "5"
        calFlag = 1    }
    
    @IBAction func button6(_ sender: Any) {
        
        caculaterDisplay.text = caculaterDisplay.text! + "6"
        calFlag = 1    }
    
    
    @IBAction func button7(_ sender: Any) {
        
        caculaterDisplay.text = caculaterDisplay.text! + "7"
        calFlag = 1    }
    
    @IBAction func button8(_ sender: Any) {
        
        caculaterDisplay.text = caculaterDisplay.text! + "8"
        calFlag = 1    }
    
    @IBAction func button9(_ sender: Any) {
        
        caculaterDisplay.text = caculaterDisplay.text! + "9"
        calFlag = 1    }
    
    @IBAction func button0(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + "0"
        calFlag = 1
    }
    
    
    
    
    @IBAction func buttonpoint(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + "."    }
    
    @IBAction func buttonCaculator(_ sender: Any) {
        if(caculaterOperator==1)
        {
            caculaterDisplay.text = "\(temp + Double(caculaterDisplay.text!)!)"
            
        }
        if(caculaterOperator==2)
        {
            caculaterDisplay.text = "\(temp - Double(caculaterDisplay.text!)!)"
                 }
        
        if(caculaterOperator==3)
        {
caculaterDisplay.text = "\(temp * Double(caculaterDisplay.text!)!)"
            
        }
        
        if caculaterOperator==4
            {
            caculaterDisplay.text = "\(temp / Double(caculaterDisplay.text!)!)"    }
    
    }

    @IBAction func buttonMinus(_ sender: Any) {
        caculaterOperator = 2
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        calFlag = 2
    }
    @IBAction func buttonMultiply(_ sender: Any) {
        caculaterOperator = 3
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        calFlag = 2
    }
    

    @IBAction func buttonDivided(_ sender: Any) {
        caculaterOperator = 4
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        
        calFlag = 2
        
    }

    @IBAction func buttonAdd(_ sender: Any) {
        if caculaterOperator == 1{
            caculaterDisplay.text = "\(temp + Double(caculaterDisplay.text!)!)"
        }
        caculaterOperator = 1
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        caculaterOperator = 1
        calFlag = 2
    }
    @IBAction func clear(_ sender: Any) {
        
        caculaterOperator = 0
        calFlag = 0
        temp = 0
        caculaterDisplay.text = ""
    }
    
    
    @IBAction func AClear(_ sender: Any){
        caculaterOperator = 0
        calFlag = 0
        temp = 0
        caculaterDisplay.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
