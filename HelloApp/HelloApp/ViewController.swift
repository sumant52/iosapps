//
//  ViewController.swift
//  HelloApp
//
//  Created by Chaganti,Sumant on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    @IBOutlet weak var gradeOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        //Read the data from the textbox and store in a variable
        var name = nameOutlet.text!
        
        var grade=gradeOutlet.text!
        
        //Change the display label with this format. Hello, name!
        
        displayLabel.text = "Hello, \(name)! \(grade) "
    }
    
    
    
    
    
    
    
}

