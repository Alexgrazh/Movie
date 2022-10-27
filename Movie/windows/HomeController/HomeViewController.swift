//
//  HomeViewController.swift
//  Movie
//
//  Created by Alex Grazhdan on 21.10.2022.
//

import UIKit
import Alamofire
//import SDWebImage

class HomeViewController: UIViewController {
    
    

    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cellNib = UINib(nibName: "HomeTableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "HomeTableViewCell")

        
    }
    
    
    
   
}






