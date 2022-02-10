//
//  ViewController.swift
//  CourseApp
//
//  Created by Chaganti,Sumant on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var crsDisplayApp: UILabel!
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    @IBOutlet weak var crsDetails: UILabel!
    
    @IBOutlet weak var crsNumber: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var semesterOffered: UILabel!
    
    
    
    
    @IBOutlet weak var previousOutlet: UIButton!
    
    
    @IBOutlet weak var nextOutlet: UIButton!
    
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"], ["img02", "44643", "ios", "Spring 2022"],["img03", "44656", "Data Streaming", "Summer 2022"]]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI(imageNumber)
        previousOutlet.isEnabled = false
        // Load the first course details (image,courseNum, title, and sem)
        // previous button should be disabled
    }
    
    func updateUI(_ imageNum: Int){
        displayImage.image = UIImage(named: courses[imageNum][0])
        crsNumber.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        semesterOffered.text = courses[imageNum][3]
    }

    @IBAction func previousButton(_ sender: Any) {
        nextOutlet.isEnabled = true
        imageNumber -= 1
        updateUI(imageNumber)
        
        if(imageNumber == 0){
            previousOutlet.isEnabled = false
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        imageNumber += 1
        updateUI(imageNumber)
        previousOutlet.isEnabled = true
        
        if(imageNumber == courses.count-1){
            nextOutlet.isEnabled = false
        }
        
    }
}

