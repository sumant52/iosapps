//
//  ViewController.swift
//  Chaganti_Movies
//
//  Created by Chaganti,Sumant on 4/24/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(prodName: String, prodCategory: String){
        self.productName = prodName
        self.productCategory = prodCategory
    }
}


class GenreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //returns an int that shows number of rows
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //returns a cell
        //Create a cell with a cell name and the index path
        var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        //Assign the data into the cell
        cell.textLabel?.text = productArray[indexPath.row].productName
        return cell
    }
    

    
    
    
    @IBOutlet weak var genreTableView: UITableView!
    
    var productArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Assign the number of rows
        genreTableView.delegate = self
        //Assign the datasource
        genreTableView.dataSource = self
        
        let p1 = Product(prodName: "Drama", prodCategory: "Laptop")
        productArray.append(p1)
        
        let p2 = Product(prodName: "Horror", prodCategory: "cell phone")
        productArray.append(p2)
        
        let p3 = Product(prodName: "Documentary", prodCategory: "Tablet")
        productArray.append(p3)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "movieSegue"{
            let destination = segue.destination as!  MoviesViewController
            
            //Assigning product to the destination
            destination.product = productArray[(genreTableView.indexPathForSelectedRow?.row)!]
        }
    }


}
