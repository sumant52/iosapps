//
//  ViewController.swift
//  VowelTester
//
//  Created by Chaganti,Sumant on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Textoutlet: UITextField!
    
    
    
    @IBOutlet weak var Displaylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        var enteredText=Textoutlet.text!
        if(enteredText.contains("a") ||
           enteredText.contains("e")){
            Displaylabel.text = "The text contains vowels"
        }
        else{
            Displaylabel.text = "There are no vowels in the text"
        }
    }
    

}

