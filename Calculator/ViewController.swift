//
//  ViewController.swift
//  Calculator
//
//  Created by Sanjarbek Abdurayimov on 25/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLbl: UILabel!{
        didSet{
            countLbl.text = ""
        }
    }
    
    var number1 = 0
    var number2 = 0
    var resultNum = 0
    var operators = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func commaPressed(_ sender: Any) {
        countLbl.text! += ","
    }
    
    @IBAction func nulPressed(_ sender: Any) {
        countLbl.text! += "0"
    }
    
    @IBAction func onePressed(_ sender: UIButton) {
       countLbl.text! += "1"
    }
    
    @IBAction func twoPressed(_ sender: Any) {
       countLbl.text! += "2"
    }
    
    @IBAction func threePressed(_ sender: Any) {
        countLbl.text! += "3"
    }
    
    
    @IBAction func fourPressed(_ sender: Any) {
        countLbl.text! += "4"
    }
    
    
    @IBAction func fivePressed(_ sender: Any) {
        countLbl.text! += "5"
    }
    
    
    @IBAction func sixPressed(_ sender: Any) {
        countLbl.text! += "6"

    }
    
    
    @IBAction func sevenPressed(_ sender: Any) {
        countLbl.text! += "7"

    }
  
    @IBAction func eightPressed(_ sender: Any) {
        countLbl.text! += "8"
    }
 
    @IBAction func ninePressed(_ sender: Any) {
        countLbl.text! += "9"

    }
    
 
    @IBAction func equalPressed(_ sender: Any) {
        number2 = Int(countLbl.text!) ?? 0
        
        switch operators {
        case "+":
            resultNum = Int(number1 + number2)
            countLbl.text = String(resultNum)
            
        case "-":
            resultNum = Int(number1 - number2)
            countLbl.text = String(resultNum)
            
        case "*":
            resultNum = Int(number1 * number2)
            countLbl.text = String(resultNum)
            
        case "÷":
            resultNum = Int(number1 / number2)
            countLbl.text = String(resultNum)
            
        default:
            countLbl.text = "Error"
        }
    }
    
    @IBAction func plusPressed(_ sender: Any) {
        operators = "+"
        number1 = Int(countLbl.text!) ?? 0
        clearAll()
    }
    
   
    @IBAction func minusPressed(_ sender: Any) {
        operators = "-"
        number1 = Int(countLbl.text!) ?? 0
        clearAll()
    }
    
    @IBAction func multiplicationPressed(_ sender: Any) {
        operators = "*"
        number1 = Int(countLbl.text!) ?? 0
        clearAll()
    }
    
    @IBAction func dividePressed(_ sender: Any) {
        operators = "÷"
        number1 = Int(countLbl.text!) ?? 0
        clearAll()
    }
   
    @IBAction func percentPressed(_ sender: Any) {
        operators = "%"
        number1 = Int(countLbl.text!) ?? 0
        clearAll()
    }
    
    @IBAction func clearPressed(_ sender: Any) {
        clearAll()
    }
    
    
    func clearAll() {
        countLbl.text = "0"
    }
    
}

