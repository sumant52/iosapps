//
//  ViewController.swift
//  Chaganti_FormatName
//
//  Created by Chaganti,Sumant on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var firstNameTextField: UITextField!


    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    
    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        
        var firstName = firstNameTextField.text!
        
        var lastName = lastNameTextField.text!
        
        fullNameLabel.text = "\(firstName) \(lastName)"
        
        var firstNameInitial = firstName.prefix(1)
        
        var lastNameInitial = lastName.prefix(1)
        
        initialsLabel.text = "\(firstNameInitial)\(lastNameInitial)"
        
        
    }
    
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

