//
//  ResultViewController.swift
//  TableViewDemo
//
//  Created by Chaganti,Sumant on 4/24/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var product : Product?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayLabel.text = "The product \((product?.productName)!) is of \((product?.productCategory)!) category1"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
